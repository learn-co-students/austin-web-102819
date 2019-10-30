class BankAccount
    # Class for all
    # Instance is 1
    # vanessa_account.user_id
    # Username cannot be get or set without adding it to this line 
    attr_accessor :balance
    attr_reader :user_id

    # @@ is for class variables
    # ex Yellow-Headed-Soldier
    # Every instance has access to class variables
    # NOOO vanessa_account.all
    @@all = []
    @@bank_name = "Chase"

    # Initialize runs when a new BankAccount instance is created
    # vanessa_account = BankAccount.new("94975397538905", 100000000)
    def initialize(user_id, balance)

        # @ is for Instance variables
        @user_id = user_id

        @balance = balance
        @username = ""

        # self is the instance that is being initialized
        # self is only defined in this block
        @@all  << self
    end

    # Class method
    # Class methods start with self
    # Call method
    # YASSSS BankAccount.get_all_bank_accounts
    # NOOOO vanessa_account.get_all_bank_accounts
    def self.get_all_bank_accounts
        @@all
    end
    # Instance method
    # Increases balance by amount passed in
    # vanessa_account.deposit(100000000)
    def deposit(amount)
        @balance += amount
    end
    # Instance method
    # Decreasing balance by amount passed in
    # vanessa_account.withdraw(1)
    def withdraw(amount)
        @balance -= amount
    end
    # Return total amount of all balances in the bank
    def self.total_monies
        @@all.reduce(0) do |sum, bank_account|
            sum + bank_account.balance
        end
    end
end
