require 'account'

describe Account do

  subject(:account) { described_class.new }
  let(:statement_klass) { double :statement_klass, :new => mock_statement }
  let(:mock_statement) { double :mock_statement, :view_statement => 50 }

  it 'increases balance when credit' do
    account.credit(1000)
    expect(account.balance).to eq 1000
  end

  it 'decreases balance when debit' do
    account.credit(1000)
    account.debit(250)
    expect(account.balance).to eq 750
  end

  it 'cannot debit from account when balance is 0' do
    account.credit(249)
    expect {account.debit(250)}.to raise_error 'Not enough funds in your account'
  end

  it 'records transactions' do
    account.credit(50)
    account.debit(25)
    expect(account.transaction_history.length).to eq 2
    expect(account.transaction_history.any? { |hash| hash[:credit] == 50 }).to be true
  end

  it 'returns the statement' do
    expect(mock_statement).to receive(:view_statement)
    account.view_statement(statement_klass)
  end

end
