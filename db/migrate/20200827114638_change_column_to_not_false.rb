class ChangeColumnToNotFalse < ActiveRecord::Migration[6.0]
 def up
   change_column :requests, :quiz_id, :bigint, null: true
end
def down
   change_column :requests, :quiz_id, :bigint, null: false
end
end
