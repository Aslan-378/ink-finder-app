class FixColumnName < ActiveRecord::Migration[6.0]

  def change
    rename_column :users, :location, :address
  end
end
