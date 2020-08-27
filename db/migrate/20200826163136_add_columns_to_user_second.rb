class AddColumnsToUserSecond < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :instagram, :string
    rename_column :users, :social_media, :facebook
  end
end
