# frozen_string_literal: true

require 'ostruct'
require 'spec_helper'
# Test ALL zip codes for Costa Rica
RSpec.describe CostaRicaAddressUtils do
  # Province San José
  describe "Province San José" do
    context "Canton 'Central'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Central'" do
          expect(described_class.fetch_address_from_zip!('10101', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'Carmen')
          expect(described_class.fetch_address_from_zip!('10102', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'Merced')
          expect(described_class.fetch_address_from_zip!('10103', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'Hospital')
          expect(described_class.fetch_address_from_zip!('10104', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'Catedral')
          expect(described_class.fetch_address_from_zip!('10105', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'Zapote')
          expect(described_class.fetch_address_from_zip!('10106', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'San Francisco de Dos Ríos')
          expect(described_class.fetch_address_from_zip!('10107', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'Uruca')
          expect(described_class.fetch_address_from_zip!('10108', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'Mata Redonda')
          expect(described_class.fetch_address_from_zip!('10109', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'Pavas')
          expect(described_class.fetch_address_from_zip!('10110', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'Hatillo')
          expect(described_class.fetch_address_from_zip!('10111', new_dataset:)).to include(province: 'San José', canton: 'Central', district: 'San Sebastián')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Escazú'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Escazú'" do
          expect(described_class.fetch_address_from_zip!('10201', new_dataset:)).to include(province: 'San José', canton: 'Escazú', district: 'Escazú')
          expect(described_class.fetch_address_from_zip!('10202', new_dataset:)).to include(province: 'San José', canton: 'Escazú', district: 'San Antonio')
          expect(described_class.fetch_address_from_zip!('10203', new_dataset:)).to include(province: 'San José', canton: 'Escazú', district: 'San Rafael')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Desamparados'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Desamparados'" do
          expect(described_class.fetch_address_from_zip!('10301', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'Desamparados')
          expect(described_class.fetch_address_from_zip!('10302', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'San Miguel')
          expect(described_class.fetch_address_from_zip!('10303', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'San Juan de Dios')
          expect(described_class.fetch_address_from_zip!('10304', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'San Rafael Arriba')
          expect(described_class.fetch_address_from_zip!('10305', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'San Antonio')
          expect(described_class.fetch_address_from_zip!('10306', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'Frailes')
          expect(described_class.fetch_address_from_zip!('10307', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'Patarrá')
          expect(described_class.fetch_address_from_zip!('10308', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'San Cristóbal')
          expect(described_class.fetch_address_from_zip!('10309', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'Rosario')
          expect(described_class.fetch_address_from_zip!('10310', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'Damas')
          expect(described_class.fetch_address_from_zip!('10311', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'San Rafael Abajo')
          expect(described_class.fetch_address_from_zip!('10312', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'Gravilias')
          expect(described_class.fetch_address_from_zip!('10313', new_dataset:)).to include(province: 'San José', canton: 'Desamparados', district: 'Los Guido')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Puriscal'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Puriscal'" do
          expect(described_class.fetch_address_from_zip!('10401', new_dataset:)).to include(province: 'San José', canton: 'Puriscal', district: 'Santiago')
          expect(described_class.fetch_address_from_zip!('10402', new_dataset:)).to include(province: 'San José', canton: 'Puriscal', district: 'Mercedes Sur')
          expect(described_class.fetch_address_from_zip!('10403', new_dataset:)).to include(province: 'San José', canton: 'Puriscal', district: 'Barbacoas')
          expect(described_class.fetch_address_from_zip!('10404', new_dataset:)).to include(province: 'San José', canton: 'Puriscal', district: 'Grifo Alto')
          expect(described_class.fetch_address_from_zip!('10405', new_dataset:)).to include(province: 'San José', canton: 'Puriscal', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('10406', new_dataset:)).to include(province: 'San José', canton: 'Puriscal', district: 'Candelarita')
          expect(described_class.fetch_address_from_zip!('10407', new_dataset:)).to include(province: 'San José', canton: 'Puriscal', district: 'Desamparaditos')
          expect(described_class.fetch_address_from_zip!('10408', new_dataset:)).to include(province: 'San José', canton: 'Puriscal', district: 'San Antonio')
          expect(described_class.fetch_address_from_zip!('10409', new_dataset:)).to include(province: 'San José', canton: 'Puriscal', district: 'Chires')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Tarrazú'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Tarrazú'" do
          expect(described_class.fetch_address_from_zip!('10501', new_dataset:)).to include(province: 'San José', canton: 'Tarrazú', district: 'San Marcos')
          expect(described_class.fetch_address_from_zip!('10502', new_dataset:)).to include(province: 'San José', canton: 'Tarrazú', district: 'San Lorenzo')
          expect(described_class.fetch_address_from_zip!('10503', new_dataset:)).to include(province: 'San José', canton: 'Tarrazú', district: 'San Carlos')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Aserrí'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Aserrí'" do
          expect(described_class.fetch_address_from_zip!('10601', new_dataset:)).to include(province: 'San José', canton: 'Aserrí', district: 'Aserrí')
          expect(described_class.fetch_address_from_zip!('10602', new_dataset:)).to include(province: 'San José', canton: 'Aserrí', district: 'Tarbaca')
          expect(described_class.fetch_address_from_zip!('10603', new_dataset:)).to include(province: 'San José', canton: 'Aserrí', district: 'Vuelta de Jorco')
          expect(described_class.fetch_address_from_zip!('10604', new_dataset:)).to include(province: 'San José', canton: 'Aserrí', district: 'San Gabriel')
          expect(described_class.fetch_address_from_zip!('10605', new_dataset:)).to include(province: 'San José', canton: 'Aserrí', district: 'Legua')
          expect(described_class.fetch_address_from_zip!('10606', new_dataset:)).to include(province: 'San José', canton: 'Aserrí', district: 'Monterrey')
          expect(described_class.fetch_address_from_zip!('10607', new_dataset:)).to include(province: 'San José', canton: 'Aserrí', district: 'Salitrillos')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Mora'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Mora'" do
          expect(described_class.fetch_address_from_zip!('10701', new_dataset:)).to include(province: 'San José', canton: 'Mora', district: 'Colón')
          expect(described_class.fetch_address_from_zip!('10702', new_dataset:)).to include(province: 'San José', canton: 'Mora', district: 'Guayabo')
          expect(described_class.fetch_address_from_zip!('10703', new_dataset:)).to include(province: 'San José', canton: 'Mora', district: 'Tabarcia')
          expect(described_class.fetch_address_from_zip!('10704', new_dataset:)).to include(province: 'San José', canton: 'Mora', district: 'Piedras Negras')
          expect(described_class.fetch_address_from_zip!('10705', new_dataset:)).to include(province: 'San José', canton: 'Mora', district: 'Picagres')
          expect(described_class.fetch_address_from_zip!('10706', new_dataset:)).to include(province: 'San José', canton: 'Mora', district: 'Jaris')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Goicoechea'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Goicoechea'" do
          expect(described_class.fetch_address_from_zip!('10801', new_dataset:)).to include(province: 'San José', canton: 'Goicoechea', district: 'Guadalupe')
          expect(described_class.fetch_address_from_zip!('10802', new_dataset:)).to include(province: 'San José', canton: 'Goicoechea', district: 'San Francisco')
          expect(described_class.fetch_address_from_zip!('10803', new_dataset:)).to include(province: 'San José', canton: 'Goicoechea', district: 'Calle Blancos')
          expect(described_class.fetch_address_from_zip!('10804', new_dataset:)).to include(province: 'San José', canton: 'Goicoechea', district: 'Mata de Plátano')
          expect(described_class.fetch_address_from_zip!('10805', new_dataset:)).to include(province: 'San José', canton: 'Goicoechea', district: 'Ipís')
          expect(described_class.fetch_address_from_zip!('10806', new_dataset:)).to include(province: 'San José', canton: 'Goicoechea', district: 'Rancho Redondo')
          expect(described_class.fetch_address_from_zip!('10807', new_dataset:)).to include(province: 'San José', canton: 'Goicoechea', district: 'Purral')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Santa Ana'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Santa Ana'" do
          expect(described_class.fetch_address_from_zip!('10901', new_dataset:)).to include(province: 'San José', canton: 'Santa Ana', district: 'Santa Ana')
          expect(described_class.fetch_address_from_zip!('10902', new_dataset:)).to include(province: 'San José', canton: 'Santa Ana', district: 'Salitral')
          expect(described_class.fetch_address_from_zip!('10903', new_dataset:)).to include(province: 'San José', canton: 'Santa Ana', district: 'Pozos')
          expect(described_class.fetch_address_from_zip!('10904', new_dataset:)).to include(province: 'San José', canton: 'Santa Ana', district: 'Uruca')
          expect(described_class.fetch_address_from_zip!('10905', new_dataset:)).to include(province: 'San José', canton: 'Santa Ana', district: 'Piedades')
          expect(described_class.fetch_address_from_zip!('10906', new_dataset:)).to include(province: 'San José', canton: 'Santa Ana', district: 'Brasil')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Alajuelita'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Alajuelita'" do
          expect(described_class.fetch_address_from_zip!('11001', new_dataset:)).to include(province: 'San José', canton: 'Alajuelita', district: 'Alajuelita')
          expect(described_class.fetch_address_from_zip!('11002', new_dataset:)).to include(province: 'San José', canton: 'Alajuelita', district: 'San Josecito')
          expect(described_class.fetch_address_from_zip!('11003', new_dataset:)).to include(province: 'San José', canton: 'Alajuelita', district: 'San Antonio')
          expect(described_class.fetch_address_from_zip!('11004', new_dataset:)).to include(province: 'San José', canton: 'Alajuelita', district: 'Concepción')
          expect(described_class.fetch_address_from_zip!('11005', new_dataset:)).to include(province: 'San José', canton: 'Alajuelita', district: 'San Felipe')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Vázquez de Coronado'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Vázquez de Coronado'" do
          expect(described_class.fetch_address_from_zip!('11101', new_dataset:)).to include(province: 'San José', canton: 'Vázquez de Coronado', district: 'San Isidro')
          expect(described_class.fetch_address_from_zip!('11102', new_dataset:)).to include(province: 'San José', canton: 'Vázquez de Coronado', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('11103', new_dataset:)).to include(province: 'San José', canton: 'Vázquez de Coronado', district: 'Dulce Nombre de Jesús')
          expect(described_class.fetch_address_from_zip!('11104', new_dataset:)).to include(province: 'San José', canton: 'Vázquez de Coronado', district: 'Patalillo')
          expect(described_class.fetch_address_from_zip!('11105', new_dataset:)).to include(province: 'San José', canton: 'Vázquez de Coronado', district: 'Cascajal')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Acosta'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Acosta'" do
          expect(described_class.fetch_address_from_zip!('11201', new_dataset:)).to include(province: 'San José', canton: 'Acosta', district: 'San Ignacio')
          expect(described_class.fetch_address_from_zip!('11202', new_dataset:)).to include(province: 'San José', canton: 'Acosta', district: 'Guaitil')
          expect(described_class.fetch_address_from_zip!('11203', new_dataset:)).to include(province: 'San José', canton: 'Acosta', district: 'Palmichal')
          expect(described_class.fetch_address_from_zip!('11204', new_dataset:)).to include(province: 'San José', canton: 'Acosta', district: 'Cangrejal')
          expect(described_class.fetch_address_from_zip!('11205', new_dataset:)).to include(province: 'San José', canton: 'Acosta', district: 'Sabanillas')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Tibás'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Tibás'" do
          expect(described_class.fetch_address_from_zip!('11301', new_dataset:)).to include(province: 'San José', canton: 'Tibás', district: 'San Juan')
          expect(described_class.fetch_address_from_zip!('11302', new_dataset:)).to include(province: 'San José', canton: 'Tibás', district: 'Cinco Esquinas')
          expect(described_class.fetch_address_from_zip!('11303', new_dataset:)).to include(province: 'San José', canton: 'Tibás', district: 'Anselmo Llorente')
          expect(described_class.fetch_address_from_zip!('11304', new_dataset:)).to include(province: 'San José', canton: 'Tibás', district: 'León XIII')
          expect(described_class.fetch_address_from_zip!('11305', new_dataset:)).to include(province: 'San José', canton: 'Tibás', district: 'Colima')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Moravia'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Moravia'" do
          expect(described_class.fetch_address_from_zip!('11401', new_dataset:)).to include(province: 'San José', canton: 'Moravia', district: 'San Vicente')
          expect(described_class.fetch_address_from_zip!('11402', new_dataset:)).to include(province: 'San José', canton: 'Moravia', district: 'San Jerónimo')
          expect(described_class.fetch_address_from_zip!('11403', new_dataset:)).to include(province: 'San José', canton: 'Moravia', district: 'La Trinidad')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Montes de Oca'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Montes de Oca'" do
          expect(described_class.fetch_address_from_zip!('11501', new_dataset:)).to include(province: 'San José', canton: 'Montes de Oca', district: 'San Pedro')
          expect(described_class.fetch_address_from_zip!('11502', new_dataset:)).to include(province: 'San José', canton: 'Montes de Oca', district: 'Sabanilla')
          expect(described_class.fetch_address_from_zip!('11503', new_dataset:)).to include(province: 'San José', canton: 'Montes de Oca', district: 'Mercedes')
          expect(described_class.fetch_address_from_zip!('11504', new_dataset:)).to include(province: 'San José', canton: 'Montes de Oca', district: 'San Rafael')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Turrubares'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Turrubares'" do
          expect(described_class.fetch_address_from_zip!('11601', new_dataset:)).to include(province: 'San José', canton: 'Turrubares', district: 'San Pablo')
          expect(described_class.fetch_address_from_zip!('11602', new_dataset:)).to include(province: 'San José', canton: 'Turrubares', district: 'San Pedro')
          expect(described_class.fetch_address_from_zip!('11603', new_dataset:)).to include(province: 'San José', canton: 'Turrubares', district: 'San Juan de Mata')
          expect(described_class.fetch_address_from_zip!('11604', new_dataset:)).to include(province: 'San José', canton: 'Turrubares', district: 'San Luis')
          expect(described_class.fetch_address_from_zip!('11605', new_dataset:)).to include(province: 'San José', canton: 'Turrubares', district: 'Carara')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Dota'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Dota'" do
          expect(described_class.fetch_address_from_zip!('11701', new_dataset:)).to include(province: 'San José', canton: 'Dota', district: 'Santa María')
          expect(described_class.fetch_address_from_zip!('11702', new_dataset:)).to include(province: 'San José', canton: 'Dota', district: 'Jardín')
          expect(described_class.fetch_address_from_zip!('11703', new_dataset:)).to include(province: 'San José', canton: 'Dota', district: 'Copey')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Curridabat'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Curridabat'" do
          expect(described_class.fetch_address_from_zip!('11801', new_dataset:)).to include(province: 'San José', canton: 'Curridabat', district: 'Curridabat')
          expect(described_class.fetch_address_from_zip!('11802', new_dataset:)).to include(province: 'San José', canton: 'Curridabat', district: 'Granadilla')
          expect(described_class.fetch_address_from_zip!('11803', new_dataset:)).to include(province: 'San José', canton: 'Curridabat', district: 'Sánchez')
          expect(described_class.fetch_address_from_zip!('11804', new_dataset:)).to include(province: 'San José', canton: 'Curridabat', district: 'Tirrases')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Pérez Zeledón'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Pérez Zeledón'" do
          expect(described_class.fetch_address_from_zip!('11901', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'San Isidro de El General')
          expect(described_class.fetch_address_from_zip!('11902', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'El General')
          expect(described_class.fetch_address_from_zip!('11903', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'Daniel Flores')
          expect(described_class.fetch_address_from_zip!('11904', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'Rivas')
          expect(described_class.fetch_address_from_zip!('11905', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'San Pedro')
          expect(described_class.fetch_address_from_zip!('11906', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'Platanares')
          expect(described_class.fetch_address_from_zip!('11907', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'Pejibaye')
          expect(described_class.fetch_address_from_zip!('11908', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'Cajón')
          expect(described_class.fetch_address_from_zip!('11909', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'Barú')
          expect(described_class.fetch_address_from_zip!('11910', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'Río Nuevo')
          expect(described_class.fetch_address_from_zip!('11911', new_dataset:)).to include(province: 'San José', canton: 'Pérez Zeledón', district: 'Páramo')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'León Cortés Castro'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'León Cortés Castro'" do
          expect(described_class.fetch_address_from_zip!('12001', new_dataset:)).to include(province: 'San José', canton: 'León Cortés Castro', district: 'San Pablo')
          expect(described_class.fetch_address_from_zip!('12002', new_dataset:)).to include(province: 'San José', canton: 'León Cortés Castro', district: 'San Andres')
          expect(described_class.fetch_address_from_zip!('12003', new_dataset:)).to include(province: 'San José', canton: 'León Cortés Castro', district: 'Llano Bonito')
          expect(described_class.fetch_address_from_zip!('12004', new_dataset:)).to include(province: 'San José', canton: 'León Cortés Castro', district: 'San Isidro')
          expect(described_class.fetch_address_from_zip!('12005', new_dataset:)).to include(province: 'San José', canton: 'León Cortés Castro', district: 'Santa Cruz')
          expect(described_class.fetch_address_from_zip!('12006', new_dataset:)).to include(province: 'San José', canton: 'León Cortés Castro', district: 'San Antonio')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end
  end # Province San José

  # Province Alajuela
  describe "Province Alajuela" do
    context "Canton 'Central'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Central'" do
          expect(described_class.fetch_address_from_zip!('20101', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Alajuela')
          expect(described_class.fetch_address_from_zip!('20102', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'San José')
          expect(described_class.fetch_address_from_zip!('20103', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Carrizal')
          expect(described_class.fetch_address_from_zip!('20104', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'San Antonio')
          expect(described_class.fetch_address_from_zip!('20105', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Guácima')
          expect(described_class.fetch_address_from_zip!('20106', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'San Isidro')
          expect(described_class.fetch_address_from_zip!('20107', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Sabanilla')
          expect(described_class.fetch_address_from_zip!('20108', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('20109', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Río Segundo')
          expect(described_class.fetch_address_from_zip!('20110', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Desamparados')
          expect(described_class.fetch_address_from_zip!('20111', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Turrúcares')
          expect(described_class.fetch_address_from_zip!('20112', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Tambor')
          expect(described_class.fetch_address_from_zip!('20113', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Garita')
          expect(described_class.fetch_address_from_zip!('20114', new_dataset:)).to include(province: 'Alajuela', canton: 'Central', district: 'Sarapiquí')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'San Ramón'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'San Ramón'" do
          expect(described_class.fetch_address_from_zip!('20201', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'San Ramón')
          expect(described_class.fetch_address_from_zip!('20202', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'Santiago')
          expect(described_class.fetch_address_from_zip!('20203', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'San Juan')
          expect(described_class.fetch_address_from_zip!('20204', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'Piedades Norte')
          expect(described_class.fetch_address_from_zip!('20205', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'Piedades Sur')
          expect(described_class.fetch_address_from_zip!('20206', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('20207', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'San Isidro')
          expect(described_class.fetch_address_from_zip!('20208', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'Ángeles')
          expect(described_class.fetch_address_from_zip!('20209', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'Alfaro')
          expect(described_class.fetch_address_from_zip!('20210', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'Volio')
          expect(described_class.fetch_address_from_zip!('20211', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'Concepción')
          expect(described_class.fetch_address_from_zip!('20212', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'Zapotal')
          expect(described_class.fetch_address_from_zip!('20213', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'Peñas Blancas')
          expect(described_class.fetch_address_from_zip!('20214', new_dataset:)).to include(province: 'Alajuela', canton: 'San Ramón', district: 'San Lorenzo')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Grecia'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Grecia'" do
          expect(described_class.fetch_address_from_zip!('20301', new_dataset:)).to include(province: 'Alajuela', canton: 'Grecia', district: 'Grecia')
          expect(described_class.fetch_address_from_zip!('20302', new_dataset:)).to include(province: 'Alajuela', canton: 'Grecia', district: 'San Isidro')
          expect(described_class.fetch_address_from_zip!('20303', new_dataset:)).to include(province: 'Alajuela', canton: 'Grecia', district: 'San José')
          expect(described_class.fetch_address_from_zip!('20304', new_dataset:)).to include(province: 'Alajuela', canton: 'Grecia', district: 'San Roque')
          expect(described_class.fetch_address_from_zip!('20305', new_dataset:)).to include(province: 'Alajuela', canton: 'Grecia', district: 'Tacares')
          expect(described_class.fetch_address_from_zip!('20306', new_dataset:)).to include(province: 'Alajuela', canton: 'Grecia', district: 'Río Cuarto')
          expect(described_class.fetch_address_from_zip!('20307', new_dataset:)).to include(province: 'Alajuela', canton: 'Grecia', district: 'Puente de Piedra')
          expect(described_class.fetch_address_from_zip!('20308', new_dataset:)).to include(province: 'Alajuela', canton: 'Grecia', district: 'Bolivar')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'San Mateo'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'San Mateo'" do
          expect(described_class.fetch_address_from_zip!('20401', new_dataset:)).to include(province: 'Alajuela', canton: 'San Mateo', district: 'San Mateo')
          expect(described_class.fetch_address_from_zip!('20402', new_dataset:)).to include(province: 'Alajuela', canton: 'San Mateo', district: 'Desmonte')
          expect(described_class.fetch_address_from_zip!('20403', new_dataset:)).to include(province: 'Alajuela', canton: 'San Mateo', district: 'Jesús María')
          expect(described_class.fetch_address_from_zip!('20404', new_dataset:)).to include(province: 'Alajuela', canton: 'San Mateo', district: 'Labrador')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Atenas'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Atenas'" do
          expect(described_class.fetch_address_from_zip!('20501', new_dataset:)).to include(province: 'Alajuela', canton: 'Atenas', district: 'Atenas')
          expect(described_class.fetch_address_from_zip!('20502', new_dataset:)).to include(province: 'Alajuela', canton: 'Atenas', district: 'Jesús')
          expect(described_class.fetch_address_from_zip!('20503', new_dataset:)).to include(province: 'Alajuela', canton: 'Atenas', district: 'Mercedes')
          expect(described_class.fetch_address_from_zip!('20504', new_dataset:)).to include(province: 'Alajuela', canton: 'Atenas', district: 'San Isidro')
          expect(described_class.fetch_address_from_zip!('20505', new_dataset:)).to include(province: 'Alajuela', canton: 'Atenas', district: 'Concepción')
          expect(described_class.fetch_address_from_zip!('20506', new_dataset:)).to include(province: 'Alajuela', canton: 'Atenas', district: 'San José')
          expect(described_class.fetch_address_from_zip!('20507', new_dataset:)).to include(province: 'Alajuela', canton: 'Atenas', district: 'Santa Eulalia')
          expect(described_class.fetch_address_from_zip!('20508', new_dataset:)).to include(province: 'Alajuela', canton: 'Atenas', district: 'Escobal')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Naranjo'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Naranjo'" do
          expect(described_class.fetch_address_from_zip!('20601', new_dataset:)).to include(province: 'Alajuela', canton: 'Naranjo', district: 'Naranjo')
          expect(described_class.fetch_address_from_zip!('20602', new_dataset:)).to include(province: 'Alajuela', canton: 'Naranjo', district: 'San Miguel')
          expect(described_class.fetch_address_from_zip!('20603', new_dataset:)).to include(province: 'Alajuela', canton: 'Naranjo', district: 'San José')
          expect(described_class.fetch_address_from_zip!('20604', new_dataset:)).to include(province: 'Alajuela', canton: 'Naranjo', district: 'Cirrí Sur')
          expect(described_class.fetch_address_from_zip!('20605', new_dataset:)).to include(province: 'Alajuela', canton: 'Naranjo', district: 'San Jerónimo')
          expect(described_class.fetch_address_from_zip!('20606', new_dataset:)).to include(province: 'Alajuela', canton: 'Naranjo', district: 'San Juan')
          expect(described_class.fetch_address_from_zip!('20607', new_dataset:)).to include(province: 'Alajuela', canton: 'Naranjo', district: 'El Rosario')
          expect(described_class.fetch_address_from_zip!('20608', new_dataset:)).to include(province: 'Alajuela', canton: 'Naranjo', district: 'Palmitos')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Palmares'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Palmares'" do
          expect(described_class.fetch_address_from_zip!('20701', new_dataset:)).to include(province: 'Alajuela', canton: 'Palmares', district: 'Palmares')
          expect(described_class.fetch_address_from_zip!('20702', new_dataset:)).to include(province: 'Alajuela', canton: 'Palmares', district: 'Zaragoza')
          expect(described_class.fetch_address_from_zip!('20703', new_dataset:)).to include(province: 'Alajuela', canton: 'Palmares', district: 'Buenos Aires')
          expect(described_class.fetch_address_from_zip!('20704', new_dataset:)).to include(province: 'Alajuela', canton: 'Palmares', district: 'Santiago')
          expect(described_class.fetch_address_from_zip!('20705', new_dataset:)).to include(province: 'Alajuela', canton: 'Palmares', district: 'Candelaria')
          expect(described_class.fetch_address_from_zip!('20706', new_dataset:)).to include(province: 'Alajuela', canton: 'Palmares', district: 'Esquipulas')
          expect(described_class.fetch_address_from_zip!('20707', new_dataset:)).to include(province: 'Alajuela', canton: 'Palmares', district: 'La Granja')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Poás'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Poás'" do
          expect(described_class.fetch_address_from_zip!('20801', new_dataset:)).to include(province: 'Alajuela', canton: 'Poás', district: 'San Pedro')
          expect(described_class.fetch_address_from_zip!('20802', new_dataset:)).to include(province: 'Alajuela', canton: 'Poás', district: 'San Juan')
          expect(described_class.fetch_address_from_zip!('20803', new_dataset:)).to include(province: 'Alajuela', canton: 'Poás', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('20804', new_dataset:)).to include(province: 'Alajuela', canton: 'Poás', district: 'Carrillos')
          expect(described_class.fetch_address_from_zip!('20805', new_dataset:)).to include(province: 'Alajuela', canton: 'Poás', district: 'Sabana Redonda')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Orotina'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Orotina'" do
          expect(described_class.fetch_address_from_zip!('20901', new_dataset:)).to include(province: 'Alajuela', canton: 'Orotina', district: 'Orotina')
          expect(described_class.fetch_address_from_zip!('20902', new_dataset:)).to include(province: 'Alajuela', canton: 'Orotina', district: 'El Mastate')
          expect(described_class.fetch_address_from_zip!('20903', new_dataset:)).to include(province: 'Alajuela', canton: 'Orotina', district: 'Hacienda Vieja')
          expect(described_class.fetch_address_from_zip!('20904', new_dataset:)).to include(province: 'Alajuela', canton: 'Orotina', district: 'Coyolar')
          expect(described_class.fetch_address_from_zip!('20905', new_dataset:)).to include(province: 'Alajuela', canton: 'Orotina', district: 'La Ceiba')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'San Carlos'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'San Carlos'" do
          expect(described_class.fetch_address_from_zip!('21001', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Quesada')
          expect(described_class.fetch_address_from_zip!('21002', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Florencia')
          expect(described_class.fetch_address_from_zip!('21003', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Buenavista')
          expect(described_class.fetch_address_from_zip!('21004', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Aguas Zarcas')
          expect(described_class.fetch_address_from_zip!('21005', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Venecia')
          expect(described_class.fetch_address_from_zip!('21006', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Pital')
          expect(described_class.fetch_address_from_zip!('21007', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'La Fortuna')
          expect(described_class.fetch_address_from_zip!('21008', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'La Tigra')
          expect(described_class.fetch_address_from_zip!('21009', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'La Palmera')
          expect(described_class.fetch_address_from_zip!('21010', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Venado')
          expect(described_class.fetch_address_from_zip!('21011', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Cutris')
          expect(described_class.fetch_address_from_zip!('21012', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Monterrey')
          expect(described_class.fetch_address_from_zip!('21013', new_dataset:)).to include(province: 'Alajuela', canton: 'San Carlos', district: 'Pocosol')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Zarcero'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Zarcero'" do
          expect(described_class.fetch_address_from_zip!('21101', new_dataset:)).to include(province: 'Alajuela', canton: 'Zarcero', district: 'Zarcero')
          expect(described_class.fetch_address_from_zip!('21102', new_dataset:)).to include(province: 'Alajuela', canton: 'Zarcero', district: 'Laguna')
          expect(described_class.fetch_address_from_zip!('21103', new_dataset:)).to include(province: 'Alajuela', canton: 'Zarcero', district: 'Tapesco')
          expect(described_class.fetch_address_from_zip!('21104', new_dataset:)).to include(province: 'Alajuela', canton: 'Zarcero', district: 'Guadalupe')
          expect(described_class.fetch_address_from_zip!('21105', new_dataset:)).to include(province: 'Alajuela', canton: 'Zarcero', district: 'Palmira')
          expect(described_class.fetch_address_from_zip!('21106', new_dataset:)).to include(province: 'Alajuela', canton: 'Zarcero', district: 'Zapote')
          expect(described_class.fetch_address_from_zip!('21107', new_dataset:)).to include(province: 'Alajuela', canton: 'Zarcero', district: 'Brisas')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Sarchí'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Sarchí'" do
          expect(described_class.fetch_address_from_zip!('21201', new_dataset:)).to include(province: 'Alajuela', canton: 'Sarchí', district: 'Sarchí Norte')
          expect(described_class.fetch_address_from_zip!('21202', new_dataset:)).to include(province: 'Alajuela', canton: 'Sarchí', district: 'Sarchí Sur')
          expect(described_class.fetch_address_from_zip!('21203', new_dataset:)).to include(province: 'Alajuela', canton: 'Sarchí', district: 'Toro Amarillo')
          expect(described_class.fetch_address_from_zip!('21204', new_dataset:)).to include(province: 'Alajuela', canton: 'Sarchí', district: 'San Pedro')
          expect(described_class.fetch_address_from_zip!('21205', new_dataset:)).to include(province: 'Alajuela', canton: 'Sarchí', district: 'Rodriguez')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Upala'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Upala'" do
          expect(described_class.fetch_address_from_zip!('21301', new_dataset:)).to include(province: 'Alajuela', canton: 'Upala', district: 'Upala')
          expect(described_class.fetch_address_from_zip!('21302', new_dataset:)).to include(province: 'Alajuela', canton: 'Upala', district: 'Aguas Claras')
          expect(described_class.fetch_address_from_zip!('21303', new_dataset:)).to include(province: 'Alajuela', canton: 'Upala', district: 'San José o Pizote')
          expect(described_class.fetch_address_from_zip!('21304', new_dataset:)).to include(province: 'Alajuela', canton: 'Upala', district: 'Bijagua')
          expect(described_class.fetch_address_from_zip!('21305', new_dataset:)).to include(province: 'Alajuela', canton: 'Upala', district: 'Delicias')
          expect(described_class.fetch_address_from_zip!('21306', new_dataset:)).to include(province: 'Alajuela', canton: 'Upala', district: 'Dos Ríos')
          expect(described_class.fetch_address_from_zip!('21307', new_dataset:)).to include(province: 'Alajuela', canton: 'Upala', district: 'Yolillal')
          expect(described_class.fetch_address_from_zip!('21308', new_dataset:)).to include(province: 'Alajuela', canton: 'Upala', district: 'Canalete')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Los Chiles'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Los Chiles'" do
          expect(described_class.fetch_address_from_zip!('21401', new_dataset:)).to include(province: 'Alajuela', canton: 'Los Chiles', district: 'Los Chiles')
          expect(described_class.fetch_address_from_zip!('21402', new_dataset:)).to include(province: 'Alajuela', canton: 'Los Chiles', district: 'Caño Negro')
          expect(described_class.fetch_address_from_zip!('21403', new_dataset:)).to include(province: 'Alajuela', canton: 'Los Chiles', district: 'El Amparo')
          expect(described_class.fetch_address_from_zip!('21404', new_dataset:)).to include(province: 'Alajuela', canton: 'Los Chiles', district: 'San Jorge')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Guatuso'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Guatuso'" do
          expect(described_class.fetch_address_from_zip!('21501', new_dataset:)).to include(province: 'Alajuela', canton: 'Guatuso', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('21502', new_dataset:)).to include(province: 'Alajuela', canton: 'Guatuso', district: 'Buenavista')
          expect(described_class.fetch_address_from_zip!('21503', new_dataset:)).to include(province: 'Alajuela', canton: 'Guatuso', district: 'Cote')
          expect(described_class.fetch_address_from_zip!('21504', new_dataset:)).to include(province: 'Alajuela', canton: 'Guatuso', district: 'Katira')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Río Cuarto'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Río Cuarto'" do
          expect(described_class.fetch_address_from_zip!('21601', new_dataset:)).to include(province: 'Alajuela', canton: 'Río Cuarto', district: 'Río Cuarto')
          expect(described_class.fetch_address_from_zip!('21602', new_dataset:)).to include(province: 'Alajuela', canton: 'Río Cuarto', district: 'Santa Rita')
          expect(described_class.fetch_address_from_zip!('21603', new_dataset:)).to include(province: 'Alajuela', canton: 'Río Cuarto', district: 'Santa Isabel')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end
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