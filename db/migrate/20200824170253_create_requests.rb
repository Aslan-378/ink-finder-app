class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :quiz, null: false, foreign_key: true
      t.string :name
      t.string :location
      t.string :body_part
      t.integer :size
      t.string :style
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.boolean :accepted, default: false
      t.integer :price

      t.timestamps
    end
  end
end
