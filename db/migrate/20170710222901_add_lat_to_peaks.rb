class AddLatToPeaks < ActiveRecord::Migration[5.1]
  def change
    add_column :peaks, :lat, :float
  end
end
