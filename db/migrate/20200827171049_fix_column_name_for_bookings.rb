class FixColumnNameForBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :location, :address
  end
end
