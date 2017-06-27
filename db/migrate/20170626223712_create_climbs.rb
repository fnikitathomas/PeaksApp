class CreateClimbs < ActiveRecord::Migration[5.1]
  def change
    create_table :climbs do |t|
      t.belongs_to :peak, index: true 
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
