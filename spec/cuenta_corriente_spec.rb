require 'rspec'
require_relative '../model/cuenta_corriente'

describe 'CuentaCorriente' do

	describe 'initialize' do

		it 'deberia comenzar con saldo 0' do
			cuenta_corriente = CuentaCorriente.new
			cuenta_corriente.saldo.should eq 0
		end
		
	end

	describe 'acreditar' do

		it 'deberia incremantar el saldo con el monto acreditado' do
			cuenta_corriente = CuentaCorriente.new
			cuenta_corriente.acreditar 100
			cuenta_corriente.saldo.should eq 100
		end
		
	end

end