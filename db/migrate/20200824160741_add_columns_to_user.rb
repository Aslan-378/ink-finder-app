class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :artist, :boolean, default: false
    add_column :users, :style, :string
    add_column :users, :price, :integer
    add_column :users, :location, :string
    add_column :users, :bio, :text
    add_column :users, :experience, :integer
    add_column :users, :inspiration, :text
    add_column :users, :hobbies, :string
    add_column :users, :social_media, :string
    add_column :users, :shop, :string
    add_column :users, :website, :string
  end
end
