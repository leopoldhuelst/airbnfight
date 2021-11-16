class AddFieldsToFighters < ActiveRecord::Migration[6.0]
  def change
    change_table :fighters do |t|
      t.integer :age
      t.string :nickname
      t.integer :weight
      t.integer :height
      t.integer :arm_range
    end
  end
end
