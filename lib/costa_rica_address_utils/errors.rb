module CostaRicaAddressUtils
  class InvalidData < StandardError
    def initialize(msg)
      super(msg)
    end
  end
end