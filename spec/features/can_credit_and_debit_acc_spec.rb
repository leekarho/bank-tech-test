require 'account'

describe 'account transactions' do

  let(:account) { Account.new }

  it 'allows customer to credit their account' do
    account.credit(1000)
    account.credit(500)
    expect(account.balance).to eq 1500
  end

  it 'allows customer make credits and debits to their account' do
    account.credit(1000)
    account.credit(500)
    account.debit(75)
    account.debit(175)
    expect(account.balance).to eq 1250
  end

  it 'does not allow a negative balance' do
    account.credit(500)
    account.debit(250)
    expect { account.debit(255) }.to raise_error 'Not enough funds in your account'
  end

  it 'prints out statement' do
    account.credit(500, "18/10/2018")
    account.debit(250, "20/10/2018")
    expect { account.view_statement }.to output("date || credit || debit || balance\n"\
                                                "20/10/2018 ||  || 250 || 250\n"\
                                                "18/10/2018 || 500 ||  || 500\n").to_stdout
  end
end
