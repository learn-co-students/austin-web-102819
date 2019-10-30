class Account
    attr_reader :account_number
    attr_accessor :first_name, :last_name, :bank
    
    @@all = []

    def initialize(account_number, first_name, last_name, bank)
        @account_number = account_number
        @first_name = first_name
        @last_name = last_name
        @bank = bank

        @@all << self
    end

    def self.all
        @@all
    end   
end

