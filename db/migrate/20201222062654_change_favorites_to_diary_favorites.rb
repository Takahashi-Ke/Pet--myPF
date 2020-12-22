class ChangeFavoritesToDiaryFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_table :favorites, :diary_favorites
    remove_column :diary_favorites, :memory_id, :integer

  end
end
