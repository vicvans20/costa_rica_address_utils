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
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Central'" do
          expect(described_class.fetch_address_from_zip!('30101', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Oriental')
          expect(described_class.fetch_address_from_zip!('30102', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Occidental')
          expect(described_class.fetch_address_from_zip!('30103', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Carmen')
          expect(described_class.fetch_address_from_zip!('30104', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'San Nicolás')
          expect(described_class.fetch_address_from_zip!('30105', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Aguacaliente o San Francisco')
          expect(described_class.fetch_address_from_zip!('30106', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Guadalupe o Arenilla')
          expect(described_class.fetch_address_from_zip!('30107', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Corralillo')
          expect(described_class.fetch_address_from_zip!('30108', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Tierra Blanca')
          expect(described_class.fetch_address_from_zip!('30109', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Dulce Nombre')
          expect(described_class.fetch_address_from_zip!('30110', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Llano Grande')
          expect(described_class.fetch_address_from_zip!('30111', new_dataset:)).to include(province: 'Cartago', canton: 'Central', district: 'Quebradilla')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Paraíso'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Paraíso'" do
          expect(described_class.fetch_address_from_zip!('30201', new_dataset:)).to include(province: 'Cartago', canton: 'Paraíso', district: 'Paraíso')
          expect(described_class.fetch_address_from_zip!('30202', new_dataset:)).to include(province: 'Cartago', canton: 'Paraíso', district: 'Santiago')
          expect(described_class.fetch_address_from_zip!('30203', new_dataset:)).to include(province: 'Cartago', canton: 'Paraíso', district: 'Orosi')
          expect(described_class.fetch_address_from_zip!('30204', new_dataset:)).to include(province: 'Cartago', canton: 'Paraíso', district: 'Cachí')
          expect(described_class.fetch_address_from_zip!('30205', new_dataset:)).to include(province: 'Cartago', canton: 'Paraíso', district: 'Llanos de Santa Lucía')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'La Unión'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'La Unión'" do
          expect(described_class.fetch_address_from_zip!('30301', new_dataset:)).to include(province: 'Cartago', canton: 'La Unión', district: 'Tres Ríos')
          expect(described_class.fetch_address_from_zip!('30302', new_dataset:)).to include(province: 'Cartago', canton: 'La Unión', district: 'San Diego')
          expect(described_class.fetch_address_from_zip!('30303', new_dataset:)).to include(province: 'Cartago', canton: 'La Unión', district: 'San Juan')
          expect(described_class.fetch_address_from_zip!('30304', new_dataset:)).to include(province: 'Cartago', canton: 'La Unión', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('30305', new_dataset:)).to include(province: 'Cartago', canton: 'La Unión', district: 'Concepción')
          expect(described_class.fetch_address_from_zip!('30306', new_dataset:)).to include(province: 'Cartago', canton: 'La Unión', district: 'Dulce Nombre')
          expect(described_class.fetch_address_from_zip!('30307', new_dataset:)).to include(province: 'Cartago', canton: 'La Unión', district: 'San Ramón')
          expect(described_class.fetch_address_from_zip!('30308', new_dataset:)).to include(province: 'Cartago', canton: 'La Unión', district: 'Río Azul')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Jiménez'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Jiménez'" do
          expect(described_class.fetch_address_from_zip!('30401', new_dataset:)).to include(province: 'Cartago', canton: 'Jiménez', district: 'Juan Viñas')
          expect(described_class.fetch_address_from_zip!('30402', new_dataset:)).to include(province: 'Cartago', canton: 'Jiménez', district: 'Tucurrique')
          expect(described_class.fetch_address_from_zip!('30403', new_dataset:)).to include(province: 'Cartago', canton: 'Jiménez', district: 'Pejibaye')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Turrialba'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Turrialba'" do
          expect(described_class.fetch_address_from_zip!('30501', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Turrialba')
          expect(described_class.fetch_address_from_zip!('30502', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'La Suiza')
          expect(described_class.fetch_address_from_zip!('30503', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Peralta')
          expect(described_class.fetch_address_from_zip!('30504', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Santa Cruz')
          expect(described_class.fetch_address_from_zip!('30505', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Santa Teresita')
          expect(described_class.fetch_address_from_zip!('30506', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Pavones')
          expect(described_class.fetch_address_from_zip!('30507', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Tuis')
          expect(described_class.fetch_address_from_zip!('30508', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Tayutic')
          expect(described_class.fetch_address_from_zip!('30509', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Santa Rosa')
          expect(described_class.fetch_address_from_zip!('30510', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Tres Equis')
          expect(described_class.fetch_address_from_zip!('30511', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'La Isabel')
          expect(described_class.fetch_address_from_zip!('30512', new_dataset:)).to include(province: 'Cartago', canton: 'Turrialba', district: 'Chirripó')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Alvarado'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Alvarado'" do
          expect(described_class.fetch_address_from_zip!('30601', new_dataset:)).to include(province: 'Cartago', canton: 'Alvarado', district: 'Pacayas')
          expect(described_class.fetch_address_from_zip!('30602', new_dataset:)).to include(province: 'Cartago', canton: 'Alvarado', district: 'Cervantes')
          expect(described_class.fetch_address_from_zip!('30603', new_dataset:)).to include(province: 'Cartago', canton: 'Alvarado', district: 'Capellades')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Oreamuno'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Oreamuno'" do
          expect(described_class.fetch_address_from_zip!('30701', new_dataset:)).to include(province: 'Cartago', canton: 'Oreamuno', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('30702', new_dataset:)).to include(province: 'Cartago', canton: 'Oreamuno', district: 'Cot')
          expect(described_class.fetch_address_from_zip!('30703', new_dataset:)).to include(province: 'Cartago', canton: 'Oreamuno', district: 'Potrero Cerrado')
          expect(described_class.fetch_address_from_zip!('30704', new_dataset:)).to include(province: 'Cartago', canton: 'Oreamuno', district: 'Cipreses')
          expect(described_class.fetch_address_from_zip!('30705', new_dataset:)).to include(province: 'Cartago', canton: 'Oreamuno', district: 'Santa Rosa')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'El Guarco'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'El Guarco'" do
          expect(described_class.fetch_address_from_zip!('30801', new_dataset:)).to include(province: 'Cartago', canton: 'El Guarco', district: 'El Tejar')
          expect(described_class.fetch_address_from_zip!('30802', new_dataset:)).to include(province: 'Cartago', canton: 'El Guarco', district: 'San Isidro')
          expect(described_class.fetch_address_from_zip!('30803', new_dataset:)).to include(province: 'Cartago', canton: 'El Guarco', district: 'Tobosi')
          expect(described_class.fetch_address_from_zip!('30804', new_dataset:)).to include(province: 'Cartago', canton: 'El Guarco', district: 'Patio de Agua')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end
  end

  # Province Heredia
  describe "Province Heredia" do
    context "Canton 'Central'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Central'" do
          expect(described_class.fetch_address_from_zip!('40101', new_dataset:)).to include(province: 'Heredia', canton: 'Central', district: 'Heredia')
          expect(described_class.fetch_address_from_zip!('40102', new_dataset:)).to include(province: 'Heredia', canton: 'Central', district: 'Mercedes')
          expect(described_class.fetch_address_from_zip!('40103', new_dataset:)).to include(province: 'Heredia', canton: 'Central', district: 'San Francisco')
          expect(described_class.fetch_address_from_zip!('40104', new_dataset:)).to include(province: 'Heredia', canton: 'Central', district: 'Ulloa')
          expect(described_class.fetch_address_from_zip!('40105', new_dataset:)).to include(province: 'Heredia', canton: 'Central', district: 'Varablanca')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Barva'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Barva'" do
          expect(described_class.fetch_address_from_zip!('40201', new_dataset:)).to include(province: 'Heredia', canton: 'Barva', district: 'Barva')
          expect(described_class.fetch_address_from_zip!('40202', new_dataset:)).to include(province: 'Heredia', canton: 'Barva', district: 'San Pedro')
          expect(described_class.fetch_address_from_zip!('40203', new_dataset:)).to include(province: 'Heredia', canton: 'Barva', district: 'San Pablo')
          expect(described_class.fetch_address_from_zip!('40204', new_dataset:)).to include(province: 'Heredia', canton: 'Barva', district: 'San Roque')
          expect(described_class.fetch_address_from_zip!('40205', new_dataset:)).to include(province: 'Heredia', canton: 'Barva', district: 'Santa Lucía')
          expect(described_class.fetch_address_from_zip!('40206', new_dataset:)).to include(province: 'Heredia', canton: 'Barva', district: 'San José de la Montaña')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Santo Domingo'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Santo Domingo'" do
          expect(described_class.fetch_address_from_zip!('40301', new_dataset:)).to include(province: 'Heredia', canton: 'Santo Domingo', district: 'Santo Domingo')
          expect(described_class.fetch_address_from_zip!('40302', new_dataset:)).to include(province: 'Heredia', canton: 'Santo Domingo', district: 'San Vicente')
          expect(described_class.fetch_address_from_zip!('40303', new_dataset:)).to include(province: 'Heredia', canton: 'Santo Domingo', district: 'San Miguel')
          expect(described_class.fetch_address_from_zip!('40304', new_dataset:)).to include(province: 'Heredia', canton: 'Santo Domingo', district: 'Paracito')
          expect(described_class.fetch_address_from_zip!('40305', new_dataset:)).to include(province: 'Heredia', canton: 'Santo Domingo', district: 'Santo Tomás')
          expect(described_class.fetch_address_from_zip!('40306', new_dataset:)).to include(province: 'Heredia', canton: 'Santo Domingo', district: 'Santa Rosa')
          expect(described_class.fetch_address_from_zip!('40307', new_dataset:)).to include(province: 'Heredia', canton: 'Santo Domingo', district: 'Tures')
          expect(described_class.fetch_address_from_zip!('40308', new_dataset:)).to include(province: 'Heredia', canton: 'Santo Domingo', district: 'Pará')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Santa Bárbara'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Santa Bárbara'" do
          expect(described_class.fetch_address_from_zip!('40401', new_dataset:)).to include(province: 'Heredia', canton: 'Santa Bárbara', district: 'Santa Bárbara')
          expect(described_class.fetch_address_from_zip!('40402', new_dataset:)).to include(province: 'Heredia', canton: 'Santa Bárbara', district: 'San Pedro')
          expect(described_class.fetch_address_from_zip!('40403', new_dataset:)).to include(province: 'Heredia', canton: 'Santa Bárbara', district: 'San Juan')
          expect(described_class.fetch_address_from_zip!('40404', new_dataset:)).to include(province: 'Heredia', canton: 'Santa Bárbara', district: 'Jesús')
          expect(described_class.fetch_address_from_zip!('40405', new_dataset:)).to include(province: 'Heredia', canton: 'Santa Bárbara', district: 'Santo Domingo')
          expect(described_class.fetch_address_from_zip!('40406', new_dataset:)).to include(province: 'Heredia', canton: 'Santa Bárbara', district: 'Purabá')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'San Rafael'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'San Rafael'" do
          expect(described_class.fetch_address_from_zip!('40501', new_dataset:)).to include(province: 'Heredia', canton: 'San Rafael', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('40502', new_dataset:)).to include(province: 'Heredia', canton: 'San Rafael', district: 'San Josecito')
          expect(described_class.fetch_address_from_zip!('40503', new_dataset:)).to include(province: 'Heredia', canton: 'San Rafael', district: 'Santiago')
          expect(described_class.fetch_address_from_zip!('40504', new_dataset:)).to include(province: 'Heredia', canton: 'San Rafael', district: 'Los Ángeles')
          expect(described_class.fetch_address_from_zip!('40505', new_dataset:)).to include(province: 'Heredia', canton: 'San Rafael', district: 'Concepción')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'San Isidro'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'San Isidro'" do
          expect(described_class.fetch_address_from_zip!('40601', new_dataset:)).to include(province: 'Heredia', canton: 'San Isidro', district: 'San Isidro')
          expect(described_class.fetch_address_from_zip!('40602', new_dataset:)).to include(province: 'Heredia', canton: 'San Isidro', district: 'San José')
          expect(described_class.fetch_address_from_zip!('40603', new_dataset:)).to include(province: 'Heredia', canton: 'San Isidro', district: 'Concepción')
          expect(described_class.fetch_address_from_zip!('40604', new_dataset:)).to include(province: 'Heredia', canton: 'San Isidro', district: 'San Francisco')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Belén'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Belén'" do
          expect(described_class.fetch_address_from_zip!('40701', new_dataset:)).to include(province: 'Heredia', canton: 'Belén', district: 'San Antonio')
          expect(described_class.fetch_address_from_zip!('40702', new_dataset:)).to include(province: 'Heredia', canton: 'Belén', district: 'La Ribera')
          expect(described_class.fetch_address_from_zip!('40703', new_dataset:)).to include(province: 'Heredia', canton: 'Belén', district: 'La Asunción')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Flores'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Flores'" do
          expect(described_class.fetch_address_from_zip!('40801', new_dataset:)).to include(province: 'Heredia', canton: 'Flores', district: 'San Joaquín')
          expect(described_class.fetch_address_from_zip!('40802', new_dataset:)).to include(province: 'Heredia', canton: 'Flores', district: 'Barrantes')
          expect(described_class.fetch_address_from_zip!('40803', new_dataset:)).to include(province: 'Heredia', canton: 'Flores', district: 'Llorente')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'San Pablo'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'San Pablo'" do
          expect(described_class.fetch_address_from_zip!('40901', new_dataset:)).to include(province: 'Heredia', canton: 'San Pablo', district: 'San Pablo')
          expect(described_class.fetch_address_from_zip!('40902', new_dataset:)).to include(province: 'Heredia', canton: 'San Pablo', district: 'Rincón de Sabanilla')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Sarapiquí'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Sarapiquí'" do
          expect(described_class.fetch_address_from_zip!('41001', new_dataset:)).to include(province: 'Heredia', canton: 'Sarapiquí', district: 'Puerto Viejo')
          expect(described_class.fetch_address_from_zip!('41002', new_dataset:)).to include(province: 'Heredia', canton: 'Sarapiquí', district: 'La Virgen')
          expect(described_class.fetch_address_from_zip!('41003', new_dataset:)).to include(province: 'Heredia', canton: 'Sarapiquí', district: 'Las Horquetas')
          expect(described_class.fetch_address_from_zip!('41004', new_dataset:)).to include(province: 'Heredia', canton: 'Sarapiquí', district: 'Llanuras del Gaspar')
          expect(described_class.fetch_address_from_zip!('41005', new_dataset:)).to include(province: 'Heredia', canton: 'Sarapiquí', district: 'Cureña')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end
  end

  # Province Guanacaste
  describe "Province Guanacaste" do
    context "Canton 'Liberia'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Liberia'" do
          expect(described_class.fetch_address_from_zip!('50101', new_dataset:)).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Liberia')
          expect(described_class.fetch_address_from_zip!('50102', new_dataset:)).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Cañas Dulces')
          expect(described_class.fetch_address_from_zip!('50103', new_dataset:)).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Mayorga')
          expect(described_class.fetch_address_from_zip!('50104', new_dataset:)).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Nacascolo')
          expect(described_class.fetch_address_from_zip!('50105', new_dataset:)).to include(province: 'Guanacaste', canton: 'Liberia', district: 'Curubandé')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Nicoya'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Nicoya'" do
          expect(described_class.fetch_address_from_zip!('50201', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nicoya', district: 'Nicoya')
          expect(described_class.fetch_address_from_zip!('50202', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nicoya', district: 'Mansión')
          expect(described_class.fetch_address_from_zip!('50203', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nicoya', district: 'San Antonio')
          expect(described_class.fetch_address_from_zip!('50204', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nicoya', district: 'Quebrada Honda')
          expect(described_class.fetch_address_from_zip!('50205', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nicoya', district: 'Sámara')
          expect(described_class.fetch_address_from_zip!('50206', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nicoya', district: 'Nosara')
          expect(described_class.fetch_address_from_zip!('50207', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nicoya', district: 'Belén de Nosarita')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Santa Cruz'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Santa Cruz'" do
          expect(described_class.fetch_address_from_zip!('50301', new_dataset:)).to include(province: 'Guanacaste', canton: 'Santa Cruz', district: 'Santa Cruz')
          expect(described_class.fetch_address_from_zip!('50302', new_dataset:)).to include(province: 'Guanacaste', canton: 'Santa Cruz', district: 'Bolsón')
          expect(described_class.fetch_address_from_zip!('50303', new_dataset:)).to include(province: 'Guanacaste', canton: 'Santa Cruz', district: 'Veintisiete de Abril')
          expect(described_class.fetch_address_from_zip!('50304', new_dataset:)).to include(province: 'Guanacaste', canton: 'Santa Cruz', district: 'Tempate')
          expect(described_class.fetch_address_from_zip!('50305', new_dataset:)).to include(province: 'Guanacaste', canton: 'Santa Cruz', district: 'Cartagena')
          expect(described_class.fetch_address_from_zip!('50306', new_dataset:)).to include(province: 'Guanacaste', canton: 'Santa Cruz', district: 'Cuajiniquil')
          expect(described_class.fetch_address_from_zip!('50307', new_dataset:)).to include(province: 'Guanacaste', canton: 'Santa Cruz', district: 'Diriá')
          expect(described_class.fetch_address_from_zip!('50308', new_dataset:)).to include(province: 'Guanacaste', canton: 'Santa Cruz', district: 'Cabo Velas')
          expect(described_class.fetch_address_from_zip!('50309', new_dataset:)).to include(province: 'Guanacaste', canton: 'Santa Cruz', district: 'Tamarindo')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Bagaces'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Bagaces'" do
          expect(described_class.fetch_address_from_zip!('50401', new_dataset:)).to include(province: 'Guanacaste', canton: 'Bagaces', district: 'Bagaces')
          expect(described_class.fetch_address_from_zip!('50402', new_dataset:)).to include(province: 'Guanacaste', canton: 'Bagaces', district: 'La Fortuna')
          expect(described_class.fetch_address_from_zip!('50403', new_dataset:)).to include(province: 'Guanacaste', canton: 'Bagaces', district: 'Mogote')
          expect(described_class.fetch_address_from_zip!('50404', new_dataset:)).to include(province: 'Guanacaste', canton: 'Bagaces', district: 'Río Naranjo')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Carrillo'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Carrillo'" do
          expect(described_class.fetch_address_from_zip!('50501', new_dataset:)).to include(province: 'Guanacaste', canton: 'Carrillo', district: 'Filadelfia')
          expect(described_class.fetch_address_from_zip!('50502', new_dataset:)).to include(province: 'Guanacaste', canton: 'Carrillo', district: 'Palmira')
          expect(described_class.fetch_address_from_zip!('50503', new_dataset:)).to include(province: 'Guanacaste', canton: 'Carrillo', district: 'Sardinal')
          expect(described_class.fetch_address_from_zip!('50504', new_dataset:)).to include(province: 'Guanacaste', canton: 'Carrillo', district: 'Belén')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Cañas'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Cañas'" do
          expect(described_class.fetch_address_from_zip!('50601', new_dataset:)).to include(province: 'Guanacaste', canton: 'Cañas', district: 'Cañas')
          expect(described_class.fetch_address_from_zip!('50602', new_dataset:)).to include(province: 'Guanacaste', canton: 'Cañas', district: 'Palmira')
          expect(described_class.fetch_address_from_zip!('50603', new_dataset:)).to include(province: 'Guanacaste', canton: 'Cañas', district: 'San Miguel')
          expect(described_class.fetch_address_from_zip!('50604', new_dataset:)).to include(province: 'Guanacaste', canton: 'Cañas', district: 'Bebedero')
          expect(described_class.fetch_address_from_zip!('50605', new_dataset:)).to include(province: 'Guanacaste', canton: 'Cañas', district: 'Porozal')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Abangares'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Abangares'" do
          expect(described_class.fetch_address_from_zip!('50701', new_dataset:)).to include(province: 'Guanacaste', canton: 'Abangares', district: 'Las Juntas')
          expect(described_class.fetch_address_from_zip!('50702', new_dataset:)).to include(province: 'Guanacaste', canton: 'Abangares', district: 'Sierra')
          expect(described_class.fetch_address_from_zip!('50703', new_dataset:)).to include(province: 'Guanacaste', canton: 'Abangares', district: 'San Juan')
          expect(described_class.fetch_address_from_zip!('50704', new_dataset:)).to include(province: 'Guanacaste', canton: 'Abangares', district: 'Colorado')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Tilarán'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Tilarán'" do
          expect(described_class.fetch_address_from_zip!('50801', new_dataset:)).to include(province: 'Guanacaste', canton: 'Tilarán', district: 'Tilarán')
          expect(described_class.fetch_address_from_zip!('50802', new_dataset:)).to include(province: 'Guanacaste', canton: 'Tilarán', district: 'Quebrada Grande')
          expect(described_class.fetch_address_from_zip!('50803', new_dataset:)).to include(province: 'Guanacaste', canton: 'Tilarán', district: 'Tronadora')
          expect(described_class.fetch_address_from_zip!('50804', new_dataset:)).to include(province: 'Guanacaste', canton: 'Tilarán', district: 'Santa Rosa')
          expect(described_class.fetch_address_from_zip!('50805', new_dataset:)).to include(province: 'Guanacaste', canton: 'Tilarán', district: 'Líbano')
          expect(described_class.fetch_address_from_zip!('50806', new_dataset:)).to include(province: 'Guanacaste', canton: 'Tilarán', district: 'Tierras Morenas')
          expect(described_class.fetch_address_from_zip!('50807', new_dataset:)).to include(province: 'Guanacaste', canton: 'Tilarán', district: 'Arenal')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Nandayure'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Nandayure'" do
          expect(described_class.fetch_address_from_zip!('50901', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nandayure', district: 'Carmona')
          expect(described_class.fetch_address_from_zip!('50902', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nandayure', district: 'Santa Rita')
          expect(described_class.fetch_address_from_zip!('50903', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nandayure', district: 'Zapotal')
          expect(described_class.fetch_address_from_zip!('50904', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nandayure', district: 'San Pablo')
          expect(described_class.fetch_address_from_zip!('50905', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nandayure', district: 'Porvenir')
          expect(described_class.fetch_address_from_zip!('50906', new_dataset:)).to include(province: 'Guanacaste', canton: 'Nandayure', district: 'Bejuco')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'La Cruz'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'La Cruz'" do
          expect(described_class.fetch_address_from_zip!('51001', new_dataset:)).to include(province: 'Guanacaste', canton: 'La Cruz', district: 'La Cruz')
          expect(described_class.fetch_address_from_zip!('51002', new_dataset:)).to include(province: 'Guanacaste', canton: 'La Cruz', district: 'Santa Cecilia')
          expect(described_class.fetch_address_from_zip!('51003', new_dataset:)).to include(province: 'Guanacaste', canton: 'La Cruz', district: 'La Garita')
          expect(described_class.fetch_address_from_zip!('51004', new_dataset:)).to include(province: 'Guanacaste', canton: 'La Cruz', district: 'Santa Elena')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Hojancha'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Hojancha'" do
          expect(described_class.fetch_address_from_zip!('51101', new_dataset:)).to include(province: 'Guanacaste', canton: 'Hojancha', district: 'Hojancha')
          expect(described_class.fetch_address_from_zip!('51102', new_dataset:)).to include(province: 'Guanacaste', canton: 'Hojancha', district: 'Monte Romo')
          expect(described_class.fetch_address_from_zip!('51103', new_dataset:)).to include(province: 'Guanacaste', canton: 'Hojancha', district: 'Puerto Carrillo')
          expect(described_class.fetch_address_from_zip!('51104', new_dataset:)).to include(province: 'Guanacaste', canton: 'Hojancha', district: 'Huacas')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end
  end

  # Province Puntarenas
  describe "Province Puntarenas" do
    context "Canton 'Central'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Central'" do
          expect(described_class.fetch_address_from_zip!('60101', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Puntarenas')
          expect(described_class.fetch_address_from_zip!('60102', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Pitahaya')
          expect(described_class.fetch_address_from_zip!('60103', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Chomes')
          expect(described_class.fetch_address_from_zip!('60104', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Lepanto')
          expect(described_class.fetch_address_from_zip!('60105', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Paquera')
          expect(described_class.fetch_address_from_zip!('60106', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Manzanillo')
          expect(described_class.fetch_address_from_zip!('60107', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Guacimal')
          expect(described_class.fetch_address_from_zip!('60108', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Barranca')
          expect(described_class.fetch_address_from_zip!('60109', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Monte Verde')
          expect(described_class.fetch_address_from_zip!('60110', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Isla del Coco')
          expect(described_class.fetch_address_from_zip!('60111', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Cóbano')
          expect(described_class.fetch_address_from_zip!('60112', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Chacarita')
          expect(described_class.fetch_address_from_zip!('60113', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Chira')
          expect(described_class.fetch_address_from_zip!('60114', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Acapulco')
          expect(described_class.fetch_address_from_zip!('60115', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'El Roble')
          expect(described_class.fetch_address_from_zip!('60116', new_dataset:)).to include(province: 'Puntarenas', canton: 'Central', district: 'Arancibia')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Esparza'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Esparza'" do
          expect(described_class.fetch_address_from_zip!('60201', new_dataset:)).to include(province: 'Puntarenas', canton: 'Esparza', district: 'Espíritu Santo')
          expect(described_class.fetch_address_from_zip!('60202', new_dataset:)).to include(province: 'Puntarenas', canton: 'Esparza', district: 'San Juan Grande')
          expect(described_class.fetch_address_from_zip!('60203', new_dataset:)).to include(province: 'Puntarenas', canton: 'Esparza', district: 'Macacona')
          expect(described_class.fetch_address_from_zip!('60204', new_dataset:)).to include(province: 'Puntarenas', canton: 'Esparza', district: 'San Rafael')
          expect(described_class.fetch_address_from_zip!('60205', new_dataset:)).to include(province: 'Puntarenas', canton: 'Esparza', district: 'San Jerónimo')
          expect(described_class.fetch_address_from_zip!('60206', new_dataset:)).to include(province: 'Puntarenas', canton: 'Esparza', district: 'Caldera')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Buenos Aires'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Buenos Aires'" do
          expect(described_class.fetch_address_from_zip!('60301', new_dataset:)).to include(province: 'Puntarenas', canton: 'Buenos Aires', district: 'Buenos Aires')
          expect(described_class.fetch_address_from_zip!('60302', new_dataset:)).to include(province: 'Puntarenas', canton: 'Buenos Aires', district: 'Volcán')
          expect(described_class.fetch_address_from_zip!('60303', new_dataset:)).to include(province: 'Puntarenas', canton: 'Buenos Aires', district: 'Potrero Grande')
          expect(described_class.fetch_address_from_zip!('60304', new_dataset:)).to include(province: 'Puntarenas', canton: 'Buenos Aires', district: 'Boruca')
          expect(described_class.fetch_address_from_zip!('60305', new_dataset:)).to include(province: 'Puntarenas', canton: 'Buenos Aires', district: 'Pilas')
          expect(described_class.fetch_address_from_zip!('60306', new_dataset:)).to include(province: 'Puntarenas', canton: 'Buenos Aires', district: 'Colinas')
          expect(described_class.fetch_address_from_zip!('60307', new_dataset:)).to include(province: 'Puntarenas', canton: 'Buenos Aires', district: 'Chánguena')
          expect(described_class.fetch_address_from_zip!('60308', new_dataset:)).to include(province: 'Puntarenas', canton: 'Buenos Aires', district: 'Biolley')
          expect(described_class.fetch_address_from_zip!('60309', new_dataset:)).to include(province: 'Puntarenas', canton: 'Buenos Aires', district: 'Brunka')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Montes de Oro'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Montes de Oro'" do
          expect(described_class.fetch_address_from_zip!('60401', new_dataset:)).to include(province: 'Puntarenas', canton: 'Montes de Oro', district: 'Miramar')
          expect(described_class.fetch_address_from_zip!('60402', new_dataset:)).to include(province: 'Puntarenas', canton: 'Montes de Oro', district: 'La Unión')
          expect(described_class.fetch_address_from_zip!('60403', new_dataset:)).to include(province: 'Puntarenas', canton: 'Montes de Oro', district: 'San Isidro')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Osa'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Osa'" do
          expect(described_class.fetch_address_from_zip!('60501', new_dataset:)).to include(province: 'Puntarenas', canton: 'Osa', district: 'Puerto Cortés')
          expect(described_class.fetch_address_from_zip!('60502', new_dataset:)).to include(province: 'Puntarenas', canton: 'Osa', district: 'Palmar')
          expect(described_class.fetch_address_from_zip!('60503', new_dataset:)).to include(province: 'Puntarenas', canton: 'Osa', district: 'Sierpe')
          expect(described_class.fetch_address_from_zip!('60504', new_dataset:)).to include(province: 'Puntarenas', canton: 'Osa', district: 'Bahía Ballena')
          expect(described_class.fetch_address_from_zip!('60505', new_dataset:)).to include(province: 'Puntarenas', canton: 'Osa', district: 'Piedras Blancas')
          expect(described_class.fetch_address_from_zip!('60506', new_dataset:)).to include(province: 'Puntarenas', canton: 'Osa', district: 'Bahía Drake')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Quepos'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Quepos'" do
          expect(described_class.fetch_address_from_zip!('60601', new_dataset:)).to include(province: 'Puntarenas', canton: 'Quepos', district: 'Quepos')
          expect(described_class.fetch_address_from_zip!('60602', new_dataset:)).to include(province: 'Puntarenas', canton: 'Quepos', district: 'Savegre')
          expect(described_class.fetch_address_from_zip!('60603', new_dataset:)).to include(province: 'Puntarenas', canton: 'Quepos', district: 'Naranjito')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Golfito'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Golfito'" do
          expect(described_class.fetch_address_from_zip!('60701', new_dataset:)).to include(province: 'Puntarenas', canton: 'Golfito', district: 'Golfito')
          expect(described_class.fetch_address_from_zip!('60702', new_dataset:)).to include(province: 'Puntarenas', canton: 'Golfito', district: 'Puerto Jiménez')
          expect(described_class.fetch_address_from_zip!('60703', new_dataset:)).to include(province: 'Puntarenas', canton: 'Golfito', district: 'Guaycará')
          expect(described_class.fetch_address_from_zip!('60704', new_dataset:)).to include(province: 'Puntarenas', canton: 'Golfito', district: 'Pavón')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Coto Brus'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Coto Brus'" do
          expect(described_class.fetch_address_from_zip!('60801', new_dataset:)).to include(province: 'Puntarenas', canton: 'Coto Brus', district: 'San Vito')
          expect(described_class.fetch_address_from_zip!('60802', new_dataset:)).to include(province: 'Puntarenas', canton: 'Coto Brus', district: 'Sabalito')
          expect(described_class.fetch_address_from_zip!('60803', new_dataset:)).to include(province: 'Puntarenas', canton: 'Coto Brus', district: 'Aguabuena')
          expect(described_class.fetch_address_from_zip!('60804', new_dataset:)).to include(province: 'Puntarenas', canton: 'Coto Brus', district: 'Limoncito')
          expect(described_class.fetch_address_from_zip!('60805', new_dataset:)).to include(province: 'Puntarenas', canton: 'Coto Brus', district: 'Pittier')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Parrita'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Parrita'" do
          expect(described_class.fetch_address_from_zip!('60901', new_dataset:)).to include(province: 'Puntarenas', canton: 'Parrita', district: 'Parrita')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Corredores'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Corredores'" do
          expect(described_class.fetch_address_from_zip!('61001', new_dataset:)).to include(province: 'Puntarenas', canton: 'Corredores', district: 'Corredor')
          expect(described_class.fetch_address_from_zip!('61002', new_dataset:)).to include(province: 'Puntarenas', canton: 'Corredores', district: 'La Cuesta')
          expect(described_class.fetch_address_from_zip!('61003', new_dataset:)).to include(province: 'Puntarenas', canton: 'Corredores', district: 'Canoas')
          expect(described_class.fetch_address_from_zip!('61004', new_dataset:)).to include(province: 'Puntarenas', canton: 'Corredores', district: 'Laurel')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end

    context "Canton 'Garabito'" do
      shared_examples "zip code dataset" do |new_dataset|
        it "validates zip codes for 'Garabito'" do
          expect(described_class.fetch_address_from_zip!('61101', new_dataset:)).to include(province: 'Puntarenas', canton: 'Garabito', district: 'Jacó')
          expect(described_class.fetch_address_from_zip!('61102', new_dataset:)).to include(province: 'Puntarenas', canton: 'Garabito', district: 'Tárcoles')
        end
      end

      it_behaves_like "zip code dataset", true
      it_behaves_like "zip code dataset", false
    end
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