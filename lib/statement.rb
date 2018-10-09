require_relative 'account'

class Statement

  def view_statement(transaction_history)
    puts 'date || credit || debit || balance'
    transaction_history.reverse_each do |row|
      puts (row[:date]).to_s + ' || ' + (row[:credit]).to_s + ' || ' "#{row[:debit]}" + ' || ' + (row[:balance]).to_s
    end
  end

end
