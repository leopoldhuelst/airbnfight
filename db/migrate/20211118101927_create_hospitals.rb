class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.integer :rating
      t.text :address

      t.timestamps
    end
  end
end
