class CreatePeaks < ActiveRecord::Migration[5.1]
  def change
    create_table :peaks do |t|
      t.string :name
      t.integer :elevation
      t.string :image

      t.timestamps
    end
  end
end
