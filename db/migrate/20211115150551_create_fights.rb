class CreateFights < ActiveRecord::Migration[6.0]
  def change
    create_table :fights do |t|
      t.integer :duration
      t.integer :number_of_fighters
      t.boolean :weapons_allowed
      t.date :approved_at
      t.references :fighter, null: false, foreign_key: true
      t.references :arena, null: false, foreign_key: true

      t.timestamps
    end
  end
end
