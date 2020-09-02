class AddColumnsToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :request, null: false, foreign_key: true 
  end
end
