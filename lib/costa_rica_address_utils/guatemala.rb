# frozen_string_literal: true

module CostaRicaAddressUtils
  module Guatemala
    # Guatemala-specific implementation
    JSON_FILE_PATH = File.join(File.dirname(__FILE__), '..', '..', 'data', 'guatemala_dataset.json')
    LOCATIONS_DATASET = JSON.parse(File.read(JSON_FILE_PATH))

    # Your Guatemala-specific methods here

    # For a given address of 2 levels, return options for each level found and zip code if full address is valid
    def self.fetch_address_data(department:, municipality:)
      raise CostaRicaAddressUtils::InvalidData, 'Department is required' if department.nil? || department.empty?

      department_data = LOCATIONS_DATASET[department]
      municipality_data = !!department_data ? department_data['locationsLevel2'][municipality] : nil

      # Municipality options(lv2), only if department(lv1) is valid
      municipality_options = !!department_data ? department_data['locationsLevel2'].keys : []
      zip = (!!municipality_data && municipality_data['zipCode']) || nil # Zip code, only if full address is valid

      {
        zip: zip,
        # Names options
        department_options: LOCATIONS_DATASET.keys,
        municipality_options: municipality_options
      }
    end

    # Get one address information from a zip code
    def self.fetch_address_from_zip(zip_code)
      return nil unless zip_valid?(zip_code)

      zip_code_s = zip_code.to_s
      LOCATIONS_DATASET.each do |department, department_data|
        department_data['locationsLevel2'].each do |municipality, municipality_data|
          if municipality_data['zipCode'] == zip_code_s
            return {
              department: department,
              municipality: municipality,
              zip: zip_code_s
            }
          end
        end
      end

      nil
    end

    def self.address_valid?(department:, municipality:)
      is_valid = true
      begin
        data = fetch_address_data(department: department, municipality: municipality)
        is_valid = !!data[:zip] # Is valid if matched to a zip code
      rescue CostaRicaAddressUtils::InvalidData => e
        is_valid = false
      end

      is_valid
    end
  end # Guatemala
end # CostaRicaAddressUtils
