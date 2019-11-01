require "pry"
require_relative "bank"
require_relative "user"
require_relative "account"


# One Bank has many Accounts
# Account will store the Bank info
# Accounts need to know what Bank they belong to

bank_1 = Bank.new("Chase")
bank_2 = Bank.new("Citi")

# 2 ways to add a user
rachel = User.new("Rachel", "F", bank_1)
mason = bank_2.add_user("Mason", "W")

# 2 ways to add an Account
# Call Account directly vs through Bank
Account.new("97348934y78934", bank_1, rachel)
bank_2.add_account("8643864386734", mason);



# bank_1.accounts

# account_1 = Account.new("9439759745", "Vanessa", "Burroughs", "chase")

binding.pry
