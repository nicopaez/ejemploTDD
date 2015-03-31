require 'rspec'
require_relative '../model/caja_de_ahorro'

describe 'CajaDeAhorro' do

  describe 'initialize' do

    it 'deberia comenzar con saldo 0' do
      caja_de_ahorro = CajaDeAhorro.new
      caja_de_ahorro.saldo.should eq 0
    end
  end


  describe 'debitar' do
    it 'deberia poder debitar de la cuenta' do
      caja_de_ahorro = CajaDeAhorro.new
      caja_de_ahorro.acreditar 100
      caja_de_ahorro.debitar 10
      caja_de_ahorro.saldo.should eq 90
    end

    it ' deberia lanzar excepcion si se quiere debitar mas del saldo ' do
      caja_de_ahorro = CajaDeAhorro.new
      caja_de_ahorro.acreditar 100


      expect {
        caja_de_ahorro.debitar 110
      }.to raise_error('Saldo insuficiente')

    end



  end
end