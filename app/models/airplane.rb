class Airplane < ApplicationRecord
  has_many :flights

  def seats
    Array.new(rows) { Array.new(columns) }
  end
end
