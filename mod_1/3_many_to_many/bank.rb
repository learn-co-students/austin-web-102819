require_relative "account"
require_relative "user"

class Bank
    attr_accessor :name, :interest_rate

    def initialize(name)
        @name = name
        @interest_rate = 5.5
    end


    def add_account(account_number, user)
        new_account = Account.new(account_number, self, user)
    end

    def accounts
        all_accounts = Account.all

        all_accounts.select { |account| account.bank == self }
    end
end

