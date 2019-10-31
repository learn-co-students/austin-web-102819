require_relative 'account'
class User
  @@all = []

  def initialize(first_name, last_name, bank)
    @first_name = first_name
    @last_name = last_name

    @@all << self
  end

  # Returns all accounts for the given user
  def accounts
  end

  def self.all
    @@all
  end
end
