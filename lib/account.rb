class Account

  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def credit(deposit, date = Statement.new.transaction_date)
    @balance += deposit
    @transaction_history << { date: date,
                              credit: deposit,
                              debit: nil,
                              balance: @balance }
  end

  def debit(withdrawal, date = Statement.new.transaction_date)
    raise 'Not enough funds in your account' if overdrawn(withdrawal)

    @balance -= withdrawal
    @transaction_history << { date: date,
                              credit: nil,
                              debit: withdrawal,
                              balance: @balance }
  end

  def view_statement(acc_statement = Statement.new)
    acc_statement.view_statement(@transaction_history)
  end

  private

  def overdrawn(withdrawal)
    @balance < withdrawal
  end
end
