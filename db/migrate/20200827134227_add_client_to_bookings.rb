class AddClientToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :client, foreign_key: { to_table: :users }
  end
end
