class CreateArenas < ActiveRecord::Migration[6.0]
  def change
    create_table :arenas do |t|
      t.string :address
      t.integer :capacity
      t.text :description
      t.references :fighter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
