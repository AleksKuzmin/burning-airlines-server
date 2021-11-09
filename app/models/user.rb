class User < ApplicationRecord
  validates :email, :presence => true, :uniqueness => true
  has_secure_password

  has_many :reservations
  has_and_belongs_to_many :flights
end
