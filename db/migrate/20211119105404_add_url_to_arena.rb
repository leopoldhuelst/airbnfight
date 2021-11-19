class AddUrlToArena < ActiveRecord::Migration[6.0]
  def change
    add_column :arenas, :image, :text
  end
end
