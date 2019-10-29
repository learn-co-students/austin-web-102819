class BankAccount
    attr_accessor :user_id, :balance

    @@all = []
    @@bank_name = "Chase"

    def initialize(user_id, balance)

        @user_id = user_id

        @balance = balance
        @username = ""

        @@all  << self
    end


    def self.get_all_bank_accounts()
        @@all
    end
    def deposit(amount)
        @balance += amount
    end
    def withdraw(amount)
        @balance -= amount

        puts self.user_id
    end
end
