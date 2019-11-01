class User
  attr_reader :bank, :first_name

  @@all_users = []

  def initialize(first_name, last_name, bank)
    @first_name = first_name
    @last_name = last_name
    @bank = bank

    @@all_users << self
  end

  # Returns all accounts for the given user
  def accounts
  end

  def self.all_users
    @@all_users
  end
end
