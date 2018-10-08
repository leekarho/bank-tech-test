class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(deposit)
    @balance += deposit
  end
  
  def debit(withdrawal)
    @balance -= withdrawal
  end

end
