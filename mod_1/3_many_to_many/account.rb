class Account
    attr_reader :account_number
    attr_accessor :bank
    
    @@all = []

    def initialize(account_number, bank, user)
        @account_number = account_number
        
        # Account belongs to a Bank
        @bank = bank

        # Account belongs to a User
        @user = user

        @@all << self
    end

    def self.all
        @@all
    end   
end

