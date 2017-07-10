class AddLongToPeaks < ActiveRecord::Migration[5.1]
  def change
    add_column :peaks, :long, :float
  end
end
