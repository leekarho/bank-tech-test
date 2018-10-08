require 'bank'

describe Bank do

  it 'increases balance when credit' do
    bank = Bank.new
    bank.credit(1000)
    expect(bank.balance).to eq 1000
  end

  it 'decreases balance when debit' do
    bank = Bank.new
    bank.credit(1000)
    bank.debit(250)
    expect(bank.balance).to eq 750
  end

end
