class AddClientToRequests < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :client, foreign_key: { to_table: :users }
  end
end
