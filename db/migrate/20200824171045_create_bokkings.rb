class CreateBokkings < ActiveRecord::Migration[6.0]
  def change
    create_table :bokkings do |t|
      t.datetime :date
      t.integer :price
      t.string :location
      t.boolean :confirmed, default: false
      t.references :request, null: false, foreign_key: true

      t.timestamps
    end
  end
end
