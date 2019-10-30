require "pry"
require_relative "bank"


# One Bank has many Accounts
# Account will store the Bank info
# Accounts need to know what Bank they belong to

bank_1 = Bank.new("Chase")
bank_2 = Bank.new("Citi")

bank_1.add_account("975397459745", "Vanessa", "Burroughs")

bank_1.accounts

# account_1 = Account.new("9439759745", "Vanessa", "Burroughs", "chase")

binding.pry
