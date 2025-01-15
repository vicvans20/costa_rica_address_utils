# frozen_string_literal: true

module CostaRicaAddressUtils
  module Guatemala
    # Guatemala-specific implementation
    JSON_FILE_PATH = File.join(File.dirname(__FILE__), '..', '..', 'data', 'guatemala_dataset.json')
    LOCATIONS_DATASET = JSON.parse(File.read(JSON_FILE_PATH))

    # Your Guatemala-specific methods here
  end
end
