class User < ApplicationRecord
  has_many :reservations, :optional => true
end
