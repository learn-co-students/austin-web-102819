require_relative "account"

class Bank

    attr_accessor :name, :interest_rate

    def initialize(name)
        @name = name
        @interest_rate = 5.5
    end

    # Get all accounts for a specific bank
    def accounts
        all_accounts = Account.all
        all_accounts.select { |account| account.bank == self }
    end


end

