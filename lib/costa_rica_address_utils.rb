# frozen_string_literal: true
# TODO find way to optimize dataset loading
require 'json'
require_relative "costa_rica_address_utils/version"
require_relative "costa_rica_address_utils/errors"

JSON_FILE_PATH = File.join(File.dirname(__FILE__), '..', 'data', 'locations_dataset.json')

module CostaRicaAddressUtils
  # Load the JSON file and parse it into a Ruby object for general usage
  LOCATIONS_DATASET = JSON.parse(File.read(JSON_FILE_PATH))
  VAlID_PROVIDERS = [:shopify, :brightpearl]

  class Error < StandardError; end
  # Your code goes here...

  # Fetch the address data from provided input, return options for subaddresses on each level and zip code if full address is valid
  def self.fetch_address_data(province:, canton: nil, district: nil)
    raise InvalidData, "Province is required" if province.nil? || province.empty?

    province_data = LOCATIONS_DATASET[province]
    canton_data = !!province_data ? province_data["cantons"][canton] : nil
    district_data = !!canton_data ? canton_data["districts"][district] : nil

    canton_options = !!province_data ? province_data["cantons"].keys : [] # Cantons options, only if province is valid
    district_options = !!canton_data ? canton_data["districts"].keys : [] # Districts options, only if canton is valid
    zip = (!!district_data && district_data["zip_code"]) || nil # Zip code, only if full address is valid

    return {
      zip: zip,
      # Names options
      province_options: LOCATIONS_DATASET.keys,
      canton_options: canton_options,
      district_options: district_options,
    }
  end

  # Get one address information from a zip code
  def self.fetch_address_from_zip(zip_code)
    raise "Zip code provided #{zip_code} is invalid. Must be a 5 digits number" if !zip_code || zip_code.to_s.length != 5
    zip_code_s = zip_code.to_s
    LOCATIONS_DATASET.each do |province, province_data|
      province_data["cantons"].each do |canton, canton_data|
        canton_data["districts"].each do |district, district_data|
          if district_data["zip_code"] == zip_code_s
            return {
              province: province,
              canton: canton,
              district: district,
              zip: zip_code_s,
            }
          end
        end
      end
    end

    return nil
  end

  def self.address_valid?(province:, canton:, district:)
    is_valid = true
    begin
      data = fetch_address_data(province: province, canton: canton, district: district)
      is_valid = !!data[:zip] # Is valid if matched to a zip code
    rescue InvalidData => e
      is_valid = false
    end

    return is_valid
  end

  # Build a Costa Rica address from an address of an external provider (Shopify, Brightpearl, etc)
  # https://shopify.dev/api/admin-graphql/2022-10/objects/mailingaddress
  # https://api-docs.brightpearl.com/contact/postal-address/get.html
  def self.build_address_from_provider(address:, provider:) 
    case provider
    when :shopify
      return {
        name: address.name, # Customer name
        address1: address.address1,
        
        province: address.province,
        canton: address.city,
        district: address.address2,
        zip: address.zip,

        national_id: address.company,
        phone: address.phone,
      }
    when :brightpearl
      return {
        name: address["addressFullName"], # Customer name
        address1: address["addressLine1"],
        
        province: address["addressLine4"],
        canton: address["addressLine3"],
        district: address["addressLine2"],
        zip: address["postalCode"],

        national_id: address["companyName"],
        phone: address["telephone"],
      }
    else
      raise InvalidData("Invalid provider, valid providers are: #{VAlID_PROVIDERS}")
    end
  end
end # module CostaRicaAddressUtils
