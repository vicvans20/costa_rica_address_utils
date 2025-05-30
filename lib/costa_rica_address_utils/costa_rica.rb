require 'json'

# TODO: find way to optimize dataset loading

module CostaRicaAddressUtils
  module CostaRica
    JSON_FILE_PATH = File.join(File.dirname(__FILE__), '..', '..', 'data', 'locations_dataset.json')
    NEW_JSON_FILE_PATH = File.join(File.dirname(__FILE__), '..', '..', 'data', 'costa_rica_dataset.json')

    # Load the JSON file and parse it into a Ruby object for general usage
    LOCATIONS_DATASET = JSON.parse(File.read(JSON_FILE_PATH))
    NEW_LOCATIONS_DATASET = JSON.parse(File.read(NEW_JSON_FILE_PATH)) # Should replace locations_dataset.json in the future

    class Error < StandardError; end
    # Your code goes here...

    # Fetch the address data from provided input, return options for subaddresses on each level and zip code if full address is valid
    def fetch_address_data(province:, canton: nil, district: nil)
      raise CostaRicaAddressUtils::InvalidData, 'Province is required' if province.nil? || province.empty?

      province_data = LOCATIONS_DATASET[province]
      canton_data = !!province_data ? province_data['cantons'][canton] : nil
      district_data = !!canton_data ? canton_data['districts'][district] : nil

      canton_options = !!province_data ? province_data['cantons'].keys : [] # Cantons options, only if province is valid
      district_options = !!canton_data ? canton_data['districts'].keys : [] # Districts options, only if canton is valid
      zip = (!!district_data && district_data['zip_code']) || nil # Zip code, only if full address is valid

      {
        zip: zip,
        # Names options
        province_options: LOCATIONS_DATASET.keys,
        canton_options: canton_options,
        district_options: district_options
      }
    end

    # Get one address information from a zip code
    def fetch_address_from_zip(zip_code, new_dataset: false)
      return nil unless zip_valid?(zip_code)

      zip_code_s = zip_code.to_s

      if new_dataset
        NEW_LOCATIONS_DATASET.each do |province, province_data|
          province_data['locationsLevel2'].each do |canton, canton_data|
            canton_data['locationsLevel3'].each do |district, district_data|
              if district_data['zipCode'] == zip_code_s
                return {
                  province: province,
                  canton: canton,
                  district: district,
                  zip: zip_code_s
                }
              end
            end
          end
        end
      else
        LOCATIONS_DATASET.each do |province, province_data|
          province_data['cantons'].each do |canton, canton_data|
            canton_data['districts'].each do |district, district_data|
              if district_data['zip_code'] == zip_code_s
                return {
                  province: province,
                  canton: canton,
                  district: district,
                  zip: zip_code_s
                }
              end
            end
          end
        end
      end

      nil
    end

    def fetch_address_from_zip!(zip_code, new_dataset: false)
      raise "Zip code provided #{zip_code} is invalid. Must be a 5 digits number" unless zip_valid?(zip_code)

      fetch_address_from_zip(zip_code, new_dataset: new_dataset)
    end

    def address_valid?(province:, canton:, district:)
      is_valid = true
      begin
        data = fetch_address_data(province: province, canton: canton, district: district)
        is_valid = !!data[:zip] # Is valid if matched to a zip code
      rescue CostaRicaAddressUtils::InvalidData => e
        is_valid = false
      end

      is_valid
    end

    def zip_valid?(zip_code)
      !!zip_code && zip_code.to_s.length == 5
    end
  end # CostaRica
end
