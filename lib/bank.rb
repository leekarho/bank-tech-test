class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(deposit)
    @balance += deposit
  end

  def debit(withdrawal)
    raise 'Not enough funds in your account' if @balance < withdrawal
    @balance -= withdrawal
  end

end
