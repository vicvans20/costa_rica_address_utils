# frozen_string_literal: true

require 'ostruct'

RSpec.describe CostaRicaAddressUtils do
  let(:address_basic) do
    {
      department: 'Guatemala',
      municipality: 'San Jose Pinula'
    }
  end

  describe 'address_valid?' do
    it 'returns true for valid addresses' do
      expect(described_class.for_country(:guatemala).address_valid?(**address_basic)).to eq(true)
    end

    it 'returns false for invalid addresses' do
      expect(described_class.for_country(:guatemala).address_valid?(**address_basic.merge(department: ''))).to eq(false)
      expect(described_class.for_country(:guatemala).address_valid?(**address_basic.merge(municipality: ''))).to eq(false)
    end
  end # describe address_valid?
end
