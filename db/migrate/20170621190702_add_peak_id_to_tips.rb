class AddPeakIdToTips < ActiveRecord::Migration[5.1]
  def change
    add_column :tips, :peak_id, :integer
  end
end
