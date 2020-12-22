class RenameImageColumnToDiaries < ActiveRecord::Migration[5.2]
  def change
    rename_column :diaries, :image_, :image_id
  end
end
