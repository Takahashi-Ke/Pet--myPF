class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :pet
      t.references :diary
      t.references :memory

      t.timestamps
    end
  end
end
