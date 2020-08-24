class AddDefaultValueToIsAccepted < ActiveRecord::Migration[6.0]
  def change
    change_column_default :requests, :is_accepted, false
  end
end
