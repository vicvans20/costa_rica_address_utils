# frozen_string_literal: true

require 'ostruct'

RSpec.describe CostaRicaAddressUtils do
  it 'has a version number' do
    expect(CostaRicaAddressUtils::VERSION).not_to be nil
  end

  let(:address_san_jose) do
    {
      province: 'San José',
      canton: 'Central',
      district: 'Pavas'
    }
  end
  let(:zip_san_jose) { '10109' }

  let(:address_limon) do
    {
      province: 'Limón',
      canton: 'Pococí',
      district: 'Guápiles'
    }
  end
  let(:zip_limon) { '70201' }

  let(:address_limon2) do
    {
      province: 'Limón',
      canton: 'Talamanca',
      district: 'Cahuita'
    }
  end
  let(:zip_limon2) { '70403' }

  let(:address_isla_coco) { { province: 'Puntarenas', canton: 'Central', district: 'Isla del Coco' } }
  let(:address_dulce_nombre) do
    { province: 'San José', canton: 'Vázquez de Coronado', district: 'Dulce Nombre de Jesús' }
  end

  describe 'address_valid?' do
    it 'returns true for valid addresses' do
      expect(described_class.address_valid?(**address_san_jose)).to eq(true)
      expect(described_class.address_valid?(**address_limon)).to eq(true)
      expect(described_class.address_valid?(**address_limon2)).to eq(true)
    end

    it 'Validate case sensitive and accent differences' do
      expect(described_class.address_valid?(**address_isla_coco)).to eq(true)
      expect(described_class.address_valid?(**address_dulce_nombre)).to eq(true)

      expect(described_class.address_valid?(**address_isla_coco.merge(district: 'Isla Del Coco'))).to eq(false)
      expect(described_class.address_valid?(**address_dulce_nombre.merge(district: 'Dulce Nombre de Jesus'))).to eq(false)
    end

    it 'returns false for invalid addresses' do
      expect(described_class.address_valid?(province: 'Made up address', canton: 'with stuff',
                                            district: 'nope')).to eq(false)
      expect(described_class.address_valid?(province: 'Made up province', canton: 'Central',
                                            district: 'Pavas')).to eq(false)
      expect(described_class.address_valid?(province: 'San José', canton: 'Bad canton', district: 'Pavas')).to eq(false)
      expect(described_class.address_valid?(province: 'San José', canton: 'Central', district: '')).to eq(false)
      expect(described_class.address_valid?(province: '', canton: '', district: '')).to eq(false)
      expect(described_class.address_valid?(province: nil, canton: nil, district: nil)).to eq(false)
    end
  end

  describe 'fetch_address_data' do
    it 'return zip code for valid addresses' do
      expect(described_class.fetch_address_data(**address_san_jose)).to include(zip: zip_san_jose)
      expect(described_class.fetch_address_data(**address_limon)).to include(zip: zip_limon)
      expect(described_class.fetch_address_data(**address_limon2)).to include(zip: zip_limon2)
    end

    it 'return nil zip for invalid or incomplete addresses' do
      expect(described_class.fetch_address_data(**address_san_jose.merge({ province: 'Invalid' }))).to include(zip: nil)
      expect(described_class.fetch_address_data(**address_san_jose.merge({ district: nil }))).to include(zip: nil)
      expect(described_class.fetch_address_data(**address_san_jose.except(:district))).to include(zip: nil)
    end
  end

  describe 'build_address_from_provider' do
    let(:costa_rica_address_standarized) do
      {
        name: 'Customer Name',
        address1: 'Street Address',

        locationLevel1: 'San José',
        locationLevel2: 'Central',
        locationLevel3: 'Pavas',
        zip: '10109',

        national_id: '12345678',
        phone: '88888888'
      }
    end

    it 'build address from shopify object notation' do
      input = OpenStruct.new(
        name: 'Customer Name',
        address1: 'Street Address',
        province: 'San José',
        city: 'Central',
        address2: 'Pavas',
        zip: '10109',
        phone: '88888888',
        company: '12345678'
      )

      expect(described_class.build_address_from_provider(address: input, provider: :shopify)).to eq(costa_rica_address_standarized) # rubocop:disable Layout/LineLength
    end
  end

  describe 'fetch_address_from_zip!' do
    it 'Get address from zip code' do
      expect(described_class.fetch_address_from_zip!(zip_san_jose)).to include(address_san_jose)
      expect(described_class.fetch_address_from_zip!(zip_san_jose.to_i)).to include(address_san_jose) # Works with integers

      expect(described_class.fetch_address_from_zip!(zip_limon)).to include(address_limon)
      expect(described_class.fetch_address_from_zip!(zip_limon2)).to include(address_limon2)
    end

    it 'Return nil for invalid zip code' do
      expect(described_class.fetch_address_from_zip!('00000')).to be_nil
      expect(described_class.fetch_address_from_zip!('99999')).to be_nil
      expect(described_class.fetch_address_from_zip!('12345')).to be_nil
    end

    it 'Return error for nil argument' do
      expect do
        described_class.fetch_address_from_zip!(nil)
      end.to raise_error(RuntimeError, include('Must be a 5 digits number'))
    end

    it 'Return error for invalid format zip code' do
      expect do
        described_class.fetch_address_from_zip!(123)
      end.to raise_error(RuntimeError, include('Must be a 5 digits number'))
      expect do
        described_class.fetch_address_from_zip!('123')
      end.to raise_error(RuntimeError, include('Must be a 5 digits number'))
      expect do
        described_class.fetch_address_from_zip!('123456')
      end.to raise_error(RuntimeError, include('Must be a 5 digits number'))
    end
  end

  describe 'fetch_address_from_zip' do
    it 'Return nil for nil zip code' do
      expect(described_class.fetch_address_from_zip(nil)).to be_nil
    end

    it 'Return nil for invalid format zip code' do
      expect(described_class.fetch_address_from_zip('123')).to be_nil
      expect(described_class.fetch_address_from_zip('123456')).to be_nil
    end
  end
end
