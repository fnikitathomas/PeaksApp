class AddUserIdToTips < ActiveRecord::Migration[5.1]
  def change
    add_column :tips, :user_id, :integer
  end
end
