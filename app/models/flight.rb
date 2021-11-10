class Flight < ApplicationRecord
  belongs_to :airplane
  has_many :reservations
  has_and_belongs_to_many :users

  def booked_seats
    reservations.map do |r|
      { :row => r.row, :column => r.column }
    end
  end
end
