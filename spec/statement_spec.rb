require 'statement'

describe Statement do

  it 'prints out statement' do
    account = [{date: "08/10/2018", credit: 500, debit: nil, balance: 500}]
    statement = Statement.new(account)
    expect(statement.view_statement).to eq [{:date=>"08/10/2018", :credit=>500, :debit=>nil, :balance=>500}]
  end

end
