class Flight < ApplicationRecord
  belongs_to :airplane
  has_many :reservations
  has_and_belongs_to_many :users
end
