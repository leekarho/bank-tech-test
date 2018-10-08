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

  it 'cannot debit from account when balance is 0' do
    bank = Bank.new
    bank.credit(249)
    expect {bank.debit(250)}.to raise_error 'Not enough funds in your account'
  end

  # it 'records date of transaction' do
  #   bank = Bank.new
  #   date = "10/12/2018"
  #   bank.credit(1000, date)
  #   expect(bank.credit).to eq ("10/12/2018")
  # end

end
