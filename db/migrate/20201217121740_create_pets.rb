class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.references :owner
      t.string :name
      t.string :image_id
      t.date :birthday
      t.integer :gender
      t.text :introduction

      t.timestamps
    end
  end
end
