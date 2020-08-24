class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :style
      t.text :meaning
      t.string :category
      t.string :representation

      t.timestamps
    end
  end
end
