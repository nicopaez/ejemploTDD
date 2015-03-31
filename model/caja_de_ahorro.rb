class CajaDeAhorro
  def initialize
    @saldo = 0
  end

  def saldo
    @saldo
  end

  def acreditar(monto)
    @saldo += monto
  end

  def debitar(a_debitar)
    if saldo< a_debitar then raise StandardError, 'Saldo insuficiente' end
    @saldo -= a_debitar
  end
end