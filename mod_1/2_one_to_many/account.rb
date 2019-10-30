class Account
    attr_reader :account_number
    attr_accessor :first_name, :last_name, :bank
    
    @@all = []

    def initialize(account_number, first_name, last_name, bank)
        @account_number = account_number
        @first_name = first_name
        @last_name = last_name
        
        # Storing Bank to create the One to Many Relationship
        # The entire bank instance
        @bank = bank

        @@all << self
    end

    # Class method
    # Creates a getter for class variable @@all
    # Call this method -> Account.all
    def self.all
        @@all
    end   
end

