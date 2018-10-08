require_relative 'account'

class Statement

  def initialize(account)
    @transaction_history = account
  end

  def view_statement
    puts "date || credit || debit || balance"
    @transaction_history.reverse.each do |row|
      puts "#{row[:date]}" + " || " + "#{row[:credit]}" + " || " "#{row[:debit]}" + " || " + "#{row[:balance]}"
    end
  end
end
