class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(deposit, date = transaction_date)
    @balance += deposit
    date
  end

  def debit(withdrawal, date = transaction_date)
    raise 'Not enough funds in your account' if @balance < withdrawal
    @balance -= withdrawal
    date
  end

  def transaction_date
    Time.now.strftime("%d/%m/%Y")
  end

end
