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
end
