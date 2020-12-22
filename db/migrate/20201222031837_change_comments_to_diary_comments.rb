class ChangeCommentsToDiaryComments < ActiveRecord::Migration[5.2]
  def change
    rename_table :comments, :diary_comments
    remove_column :diary_comments, :memory_id, :integer
  end
end
