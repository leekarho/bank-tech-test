```
As a bank customer,
so that I can save money,
I would like to deposit cash into my bank.

As a bank customer,
so that I can spend money,
I would like to withdraw some cash.

As a bank customer,
so that I can keep track of my spending,
I would like to see the transaction history.
```

Tech/Framework
-----

Written in Ruby and tested in Rspec

How to use
-----

run irb in terminal: require './lib/account.rb'
                     require './lib/statement.rb'

```
2.5.1 :001 > require './lib/account.rb'
 => true
2.5.1 :002 > require './lib/statement.rb'
 => true
2.5.1 :003 > account = Account.new
 => #<Account:0x00007fa92e8af668 @balance=0, @transaction_history=[]>
2.5.1 :004 > account.credit(50)
 => [{:date=>"10/10/2018", :credit=>50, :debit=>nil, :balance=>50}]
2.5.1 :005 > account.debit(25)
 => [{:date=>"10/10/2018", :credit=>50, :debit=>nil, :balance=>50}, {:date=>"10/10/2018", :credit=>nil, :debit=>25, :balance=>25}]
2.5.1 :006 > account.view_statement
date || credit || debit || balance
10/10/2018 ||  || 25 || 25
10/10/2018 || 50 ||  || 50
 => [{:date=>"10/10/2018", :credit=>50, :debit=>nil, :balance=>50}, {:date=>"10/10/2018", :credit=>nil, :debit=>25, :balance=>25}]
2.5.1 :007 >
```
