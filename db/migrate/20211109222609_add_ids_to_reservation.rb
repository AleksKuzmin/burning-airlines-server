class AddIdsToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :user_id, :integer
    add_column :reservations, :flight_id, :integer
    add_column :reservations, :row, :integer
    add_column :reservations, :column, :integer
  end
end
