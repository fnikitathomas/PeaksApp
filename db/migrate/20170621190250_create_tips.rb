class CreateTips < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      t.text :comment
      t.integer :difficulty_rating

      t.timestamps
    end
  end
end
