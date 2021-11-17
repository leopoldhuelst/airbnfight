class AddTitleToFight < ActiveRecord::Migration[6.0]
  def change
    add_column :fights, :title, :string
  end
end
