class ChangeQuizOnRequest < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :quiz_id
    add_reference :requests, :quiz, null: true, foreign_key: true
  end
end
