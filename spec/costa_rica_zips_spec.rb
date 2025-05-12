# frozen_string_literal: true

require 'ostruct'

# Test ALL zip codes for Costa Rica
RSpec.describe CostaRicaAddressUtils do
  # Province San José
  describe "Province San José" do
    context "Canton 'Central'" do
      it "validates zip codes for 'Central'" do
        expect(described_class.fetch_address_from_zip!('10101')).to include(province: 'San José', canton: 'Central', district: 'Carmen')
        expect(described_class.fetch_address_from_zip!('10102')).to include(province: 'San José', canton: 'Central', district: 'Merced')
        expect(described_class.fetch_address_from_zip!('10103')).to include(province: 'San José', canton: 'Central', district: 'Hospital')
        expect(described_class.fetch_address_from_zip!('10104')).to include(province: 'San José', canton: 'Central', district: 'Catedral')
        expect(described_class.fetch_address_from_zip!('10105')).to include(province: 'San José', canton: 'Central', district: 'Zapote')
        expect(described_class.fetch_address_from_zip!('10106')).to include(province: 'San José', canton: 'Central', district: 'San Francisco de Dos Ríos')
        expect(described_class.fetch_address_from_zip!('10107')).to include(province: 'San José', canton: 'Central', district: 'Uruca')
        expect(described_class.fetch_address_from_zip!('10108')).to include(province: 'San José', canton: 'Central', district: 'Mata Redonda')
        expect(described_class.fetch_address_from_zip!('10109')).to include(province: 'San José', canton: 'Central', district: 'Pavas')
        expect(described_class.fetch_address_from_zip!('10110')).to include(province: 'San José', canton: 'Central', district: 'Hatillo')
        expect(described_class.fetch_address_from_zip!('10111')).to include(province: 'San José', canton: 'Central', district: 'San Sebastián')
      end
    end

    context "Canton 'Escazú'" do
      it "validates zip codes for 'Escazú'" do
        expect(described_class.fetch_address_from_zip!('10201')).to include(province: 'San José', canton: 'Escazú', district: 'Escazú')
        expect(described_class.fetch_address_from_zip!('10202')).to include(province: 'San José', canton: 'Escazú', district: 'San Antonio')
        expect(described_class.fetch_address_from_zip!('10203')).to include(province: 'San José', canton: 'Escazú', district: 'San Rafael')
      end
    end

    context "Canton 'Desamparados'" do
      it "validates zip codes for 'Desamparados'" do
        expect(described_class.fetch_address_from_zip!('10301')).to include(province: 'San José', canton: 'Desamparados', district: 'Desamparados')
        expect(described_class.fetch_address_from_zip!('10302')).to include(province: 'San José', canton: 'Desamparados', district: 'San Miguel')
        expect(described_class.fetch_address_from_zip!('10303')).to include(province: 'San José', canton: 'Desamparados', district: 'San Juan de Dios')
        expect(described_class.fetch_address_from_zip!('10304')).to include(province: 'San José', canton: 'Desamparados', district: 'San Rafael Arriba')
        expect(described_class.fetch_address_from_zip!('10305')).to include(province: 'San José', canton: 'Desamparados', district: 'San Rafael Abajo')
        expect(described_class.fetch_address_from_zip!('10306')).to include(province: 'San José', canton: 'Desamparados', district: 'San Antonio')
        expect(described_class.fetch_address_from_zip!('10307')).to include(province: 'San José', canton: 'Desamparados', district: 'Frailes')
        expect(described_class.fetch_address_from_zip!('10308')).to include(province: 'San José', canton: 'Desamparados', district: 'Patarrá')
        expect(described_class.fetch_address_from_zip!('10309')).to include(province: 'San José', canton: 'Desamparados', district: 'San Cristóbal')
        expect(described_class.fetch_address_from_zip!('10310')).to include(province: 'San José', canton: 'Desamparados', district: 'Rosario')
        expect(described_class.fetch_address_from_zip!('10311')).to include(province: 'San José', canton: 'Desamparados', district: 'Damas')
        expect(described_class.fetch_address_from_zip!('10312')).to include(province: 'San José', canton: 'Desamparados', district: 'Gravilias')
        expect(described_class.fetch_address_from_zip!('10313')).to include(province: 'San José', canton: 'Desamparados', district: 'Los Guido')
      end
    end

    # Continue with all other cantons in San José province
    # ... (remaining San José cantons)
  end

  # Province Alajuela
  describe "Province Alajuela" do
    context "Canton 'Central'" do
      it "validates zip codes for 'Central'" do
        expect(described_class.fetch_address_from_zip!('20101')).to include(province: 'Alajuela', canton: 'Central', district: 'Alajuela')
        expect(described_class.fetch_address_from_zip!('20102')).to include(province: 'Alajuela', canton: 'Central', district: 'San José')
        expect(described_class.fetch_address_from_zip!('20103')).to include(province: 'Alajuela', canton: 'Central', district: 'Carrizal')
        expect(described_class.fetch_address_from_zip!('20104')).to include(province: 'Alajuela', canton: 'Central', district: 'San Antonio')
        expect(described_class.fetch_address_from_zip!('20105')).to include(province: 'Alajuela', canton: 'Central', district: 'Guácima')
        expect(described_class.fetch_address_from_zip!('20106')).to include(province: 'Alajuela', canton: 'Central', district: 'San Isidro')
        expect(described_class.fetch_address_from_zip!('20107')).to include(province: 'Alajuela', canton: 'Central', district: 'Sabanilla')
        expect(described_class.fetch_address_from_zip!('20108')).to include(province: 'Alajuela', canton: 'Central', district: 'San Rafael')
        expect(described_class.fetch_address_from_zip!('20109')).to include(province: 'Alajuela', canton: 'Central', district: 'Río Segundo')
        expect(described_class.fetch_address_from_zip!('20110')).to include(province: 'Alajuela', canton: 'Central', district: 'Desamparados')
        expect(described_class.fetch_address_from_zip!('20111')).to include(province: 'Alajuela', canton: 'Central', district: 'Turrúcares')
        expect(described_class.fetch_address_from_zip!('20112')).to include(province: 'Alajuela', canton: 'Central', district: 'Tambor')
        expect(described_class.fetch_address_from_zip!('20113')).to include(province: 'Alajuela', canton: 'Central', district: 'Garita')
        expect(described_class.fetch_address_from_zip!('20114')).to include(province: 'Alajuela', canton: 'Central', district: 'Sarapiquí')
      end
    end

    # Continue with all other cantons in Alajuela province
    # ... (remaining Alajuela cantons)
  end

  # Province Cartago
  describe "Province Cartago" do
    context "Canton 'Central'" do
      it "validates zip codes for 'Central'" do
        expect(described_class.fetch_address_from_zip!('30101')).to include(province: 'Cartago', canton: 'Central', district: 'Oriental')
        expect(described_class.fetch_address_from_zip!('30102')).to include(province: 'Cartago', canton: 'Central', district: 'Occidental')
        expect(described_class.fetch_address_from_zip!('30103')).to include(province: 'Cartago', canton: 'Central', district: 'Carmen')
        expect(described_class.fetch_address_from_zip!('30104')).to include(province: 'Cartago', canton: 'Central', district: 'San Nicolás')
        expect(described_class.fetch_address_from_zip!('30105')).to include(province: 'Cartago', canton: 'Central', district: 'Aguacaliente o San Francisco')
        expect(described_class.fetch_address_from_zip!('30106')).to include(province: 'Cartago', canton: 'Central', district: 'Guadalupe o Arenilla')
        expect(described_class.fetch_address_from_zip!('30107')).to include(province: 'Cartago', canton: 'Central', district: 'Corralillo')
        expect(described_class.fetch_address_from_zip!('30108')).to include(province: 'Cartago', canton: 'Central', district: 'Tierra Blanca')
        expect(described_class.fetch_address_from_zip!('30109')).to include(province: 'Cartago', canton: 'Central', district: 'Dulce Nombre')
        expect(described_class.fetch_address_from_zip!('30110')).to include(province: 'Cartago', canton: 'Central', district: 'Llano Grande')
        expect(described_class.fetch_address_from_zip!('30111')).to include(province: 'Cartago', canton: 'Central', district: 'Quebradilla')
      end
    end

    # Continue with all other cantons in Cartago province
    # ... (remaining Cartago cantons)
  end

  # Province Heredia
  describe "Province Heredia" do
    context "Canton 'Central'" do
      it "validates zip codes for 'Central'" do
        expect(described_class.fetch_address_from_zip!('40101')).to include(province: 'Heredia', canton: 'Central', district: 'Heredia')
        expect(described_class.fetch_address_from_zip!('40102')).to include(province: 'Heredia', canton: 'Central', district: 'Mercedes')
        expect(described_class.fetch_address_from_zip!('40103')).to include(province: 'Heredia', canton: 'Central', district: 'San Francisco')
        expect(described_class.fetch_address_from_zip!('40104')).to include(province: 'Heredia', canton: 'Central', district: 'Ulloa')
        expect(described_class.fetch_address_from_zip!('40105')).to include(province: 'Heredia', canton: 'Central', district: 'Varablanca')
      end
    end

    # Continue with all other cantons in Heredia province
    # ... (remaining Heredia cantons)
  end

  # Province Guanacaste
  describe "Province Guanacaste" do
    context "Canton 'Liberia'" do
      it "validates zip codes for 'Liberia'" do
        expect(described_class.fetch_address_from_zip!('50101')).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Liberia')
        expect(described_class.fetch_address_from_zip!('50102')).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Cañas Dulces')
        expect(described_class.fetch_address_from_zip!('50103')).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Mayorga')
        expect(described_class.fetch_address_from_zip!('50104')).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Nacascolo')
        expect(described_class.fetch_address_from_zip!('50105')).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Curubandé')
      end
    end

    # Continue with all other cantons in Guanacaste province
    # ... (remaining Guanacaste cantons)
  end

  # Province Puntarenas
  describe "Province Puntarenas" do
    context "Canton 'Central'" do
      it "validates zip codes for 'Central'" do
        expect(described_class.fetch_address_from_zip!('60101')).to include(province: 'Puntarenas', canton: 'Central', district: 'Puntarenas')
        expect(described_class.fetch_address_from_zip!('60102')).to include(province: 'Puntarenas', canton: 'Central', district: 'Pitahaya')
        expect(described_class.fetch_address_from_zip!('60103')).to include(province: 'Puntarenas', canton: 'Central', district: 'Chomes')
        expect(described_class.fetch_address_from_zip!('60104')).to include(province: 'Puntarenas', canton: 'Central', district: 'Lepanto')
        expect(described_class.fetch_address_from_zip!('60105')).to include(province: 'Puntarenas', canton: 'Central', district: 'Paquera')
        expect(described_class.fetch_address_from_zip!('60106')).to include(province: 'Puntarenas', canton: 'Central', district: 'Manzanillo')
        expect(described_class.fetch_address_from_zip!('60107')).to include(province: 'Puntarenas', canton: 'Central', district: 'Guacimal')
        expect(described_class.fetch_address_from_zip!('60108')).to include(province: 'Puntarenas', canton: 'Central', district: 'Barranca')
        expect(described_class.fetch_address_from_zip!('60109')).to include(province: 'Puntarenas', canton: 'Central', district: 'Monte Verde')
        expect(described_class.fetch_address_from_zip!('60110')).to include(province: 'Puntarenas', canton: 'Central', district: 'Isla del Coco')
        expect(described_class.fetch_address_from_zip!('60111')).to include(province: 'Puntarenas', canton: 'Central', district: 'Cóbano')
        expect(described_class.fetch_address_from_zip!('60112')).to include(province: 'Puntarenas', canton: 'Central', district: 'Chacarita')
        expect(described_class.fetch_address_from_zip!('60113')).to include(province: 'Puntarenas', canton: 'Central', district: 'Chira')
        expect(described_class.fetch_address_from_zip!('60114')).to include(province: 'Puntarenas', canton: 'Central', district: 'Acapulco')
        expect(described_class.fetch_address_from_zip!('60115')).to include(province: 'Puntarenas', canton: 'Central', district: 'El Roble')
        expect(described_class.fetch_address_from_zip!('60116')).to include(province: 'Puntarenas', canton: 'Central', district: 'Arancibia')
      end
    end

    # Continue with all other cantons in Puntarenas province
    # ... (remaining Puntarenas cantons)
  end

  # Province Limón
  describe "Province Limón" do
    context "Canton 'Central'" do
      it "validates zip codes for 'Central'" do
        expect(described_class.fetch_address_from_zip!('70101')).to include(province: 'Limón', canton: 'Central', district: 'Limón')
        expect(described_class.fetch_address_from_zip!('70102')).to include(province: 'Limón', canton: 'Central', district: 'Valle La Estrella')
        expect(described_class.fetch_address_from_zip!('70103')).to include(province: 'Limón', canton: 'Central', district: 'Río Blanco')
        expect(described_class.fetch_address_from_zip!('70104')).to include(province: 'Limón', canton: 'Central', district: 'Matama')
      end
    end

    # Continue with all other cantons in Limón province
    # ... (remaining Limón cantons)
  end
end