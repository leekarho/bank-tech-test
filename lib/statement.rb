require_relative 'account'

class Statement
  def initialize(account)
    @transaction_history = account
  end

  def view_statement
    puts 'date || credit || debit || balance'
    @transaction_history.reverse_each do |row|
      puts (row[:date]).to_s + ' || ' + (row[:credit]).to_s + ' || ' "#{row[:debit]}" + ' || ' + (row[:balance]).to_s
    end
  end
end
