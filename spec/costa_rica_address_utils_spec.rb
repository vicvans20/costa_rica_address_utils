# frozen_string_literal: true
require "ostruct"

RSpec.describe CostaRicaAddressUtils do
  it "has a version number" do
    expect(CostaRicaAddressUtils::VERSION).not_to be nil
  end

  let(:address_san_jose) {{
    province: "San José",
    canton: "Central",
    district: "Pavas",
  }}

  let(:address_limon) {{
    province: "Limón",
    canton: "Pococí",
    district: "Guapiles",
  }}

  let(:address_limon2) {{
    province: "Limón",
    canton: "Talamanca",
    district: "Cahuita",
  }}

  describe "address_valid?" do
    it "returns true for valid addresses" do
      expect(described_class.address_valid?(**address_san_jose)).to eq(true)
      expect(described_class.address_valid?(**address_limon)).to eq(true)
      expect(described_class.address_valid?(**address_limon2)).to eq(true)
    end

    it "returns false for invalid addresses" do
      expect(described_class.address_valid?(province: "Made up address", canton: "with stuff", district: "nope")).to eq(false)
      expect(described_class.address_valid?(province: "Made up province", canton: "Central", district: "Pavas")).to eq(false)
      expect(described_class.address_valid?(province: "San José", canton: "Bad canton", district: "Pavas")).to eq(false)
      expect(described_class.address_valid?(province: "San José", canton: "Central", district: "")).to eq(false)
      expect(described_class.address_valid?(province: "", canton: "", district: "")).to eq(false)
      expect(described_class.address_valid?(province: nil, canton: nil, district: nil)).to eq(false)
    end
  end

  describe "fetch_address_data" do
    it "return zip code for valid addresses" do
      expect(described_class.fetch_address_data(**address_san_jose)).to include(zip: "10109")
      expect(described_class.fetch_address_data(**address_limon)).to include(zip: "70201")
      expect(described_class.fetch_address_data(**address_limon2)).to include(zip: "70403")
    end
    
    it "return nil zip for invalid or incomplete addresses" do
      expect(described_class.fetch_address_data(**address_san_jose.merge({ province: "Invalid" }))).to include(zip: nil)
      expect(described_class.fetch_address_data(**address_san_jose.merge({ district: nil }))).to include(zip: nil)
      expect(described_class.fetch_address_data(**address_san_jose.except(:district))).to include(zip: nil)
    end
  end

  describe "build_address_from_provider" do
    let(:costa_rica_address) {{
      name: "Customer Name",
      address1: "Street Address",

      province: "San José",
      canton: "Central",
      district: "Pavas",
      zip: "10109",

      national_id: "12345678",
      phone: "88888888",
    }}
    it "build address from shopify object notation" do
      input = OpenStruct.new(
        name: "Customer Name",
        address1: "Street Address",
        province: "San José",
        city: "Central",
        address2: "Pavas",
        zip: "10109",
        phone: "88888888",
        company: "12345678",
      )
      expect(described_class.build_address_from_provider(address: input, provider: :shopify)).to eq(costa_rica_address)
    end
  end
end