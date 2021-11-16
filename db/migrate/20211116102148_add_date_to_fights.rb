class AddDateToFights < ActiveRecord::Migration[6.0]
  def change
    add_column :fights, :date, :date
  end
end
