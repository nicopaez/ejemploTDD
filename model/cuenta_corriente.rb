class CuentaCorriente

	def initialize
		@saldo = 0
	end

	def saldo
		@saldo
	end

	def acreditar(monto)
		@saldo += monto
	end
end