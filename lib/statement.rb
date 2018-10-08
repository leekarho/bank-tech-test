require_relative 'bank'

class Statement

  def initialize(transaction)
    @transaction_history = []

  end

  def view_statement
    puts "date || credit || debit || balance"
  end
end
