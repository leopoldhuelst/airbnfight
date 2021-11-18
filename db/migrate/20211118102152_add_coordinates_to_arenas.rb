class AddCoordinatesToArenas < ActiveRecord::Migration[6.0]
  def change
    add_column :arenas, :latitude, :float
    add_column :arenas, :longitude, :float
  end
end
