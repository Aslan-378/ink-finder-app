class FixColumnNameForRequests < ActiveRecord::Migration[6.0]
  def change
    rename_column :requests, :location, :address
  end
end
