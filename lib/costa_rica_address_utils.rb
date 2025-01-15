# frozen_string_literal: true

require_relative 'costa_rica_address_utils/version'
require_relative 'costa_rica_address_utils/errors'
require_relative 'costa_rica_address_utils/costa_rica'
require_relative 'costa_rica_address_utils/guatemala'

module CostaRicaAddressUtils # rubocop:disable Style/Documentation
  # Backwards compatibility before usage of for_country
  # Old version will be able to call methods with CostaRicaAddressUtils directly
  extend CostaRicaAddressUtils::CostaRica

  SUPPORTED_COUNTRIES = %i[costa_rica guatemala].freeze
  VALID_INPUT_PROVIDERS = %i[shopify brightpearl].freeze

  # TODO: merge the methods from both countries using new dataset for costa rica instead of previous one
  # Newer files contains a standarized format for fields.

  def self.for_country(country)
    case country.to_sym
    when :costa_rica
      CostaRicaAddressUtils::CostaRica
    when :guatemala
      CostaRicaAddressUtils::Guatemala
    else
      raise ArgumentError, "Unsupported country: #{country}. Supported countries are: #{SUPPORTED_COUNTRIES}"
    end
  end

  # Build a Costa Rica address from an address of an external provider (Shopify, Brightpearl, etc)
  # https://shopify.dev/api/admin-graphql/2022-10/objects/mailingaddress
  # https://api-docs.brightpearl.com/contact/postal-address/get.html
  # Standarized format locationLevelX for the address Province/Department, Municipality/Canton, District/Parish
  # since they are named differently in each country
  def self.build_address_from_provider(address:, provider:)
    case provider
    when :shopify
      {
        name: address.name, # Customer name
        address1: address.address1,

        locationLevel1: address.province,
        locationLevel2: address.city,
        locationLevel3: address.address2,
        zip: address.zip,

        national_id: address.company,
        phone: address.phone
      }
    when :brightpearl
      {
        name: address['addressFullName'], # Customer name
        address1: address['addressLine1'],

        locationLevel1: address['addressLine4'],
        locationLevel2: address['addressLine3'],
        locationLevel3: address['addressLine2'],
        zip: address['postalCode'],

        national_id: address['companyName'],
        phone: address['telephone']
      }
    else
      raise InvalidData("Invalid provider, valid providers are: #{VALID_INPUT_PROVIDERS}")
    end
  end
end
