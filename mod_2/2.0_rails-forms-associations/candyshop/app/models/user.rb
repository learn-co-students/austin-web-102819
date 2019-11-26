class User < ApplicationRecord
  has_many :candies, dependent: :destroy
end
