class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :pet
      t.references :diary
      t.references :memory
      t.string :comment

      t.timestamps
    end
  end
end
