require_relative "account"

class Bank
    attr_accessor :name, :interest_rate

    def initialize(name)
        @name = name
        @interest_rate = 5.5
    end


    # Instance method
    # self in instance methods will always be
    # the instance that called the method (bank_1)
    def add_account(account_number, first_name, last_name)
        puts "SELF IN THE ADD_ACCOUNT METHOD"
        puts self
        Account.new(account_number, first_name, last_name, self)
    end


    # Get all accounts for a specific bank
    # Instance method because we want an instance of a bank to know it's Accounts
    # bank_1.accounts()
    # Do not need to pass in an variables, have self
    def accounts
        Account.all.select{ |account| account.bank == self}
    end


end

