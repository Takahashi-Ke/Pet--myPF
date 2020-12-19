class AddTypeToPet < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :type, :integer
  end
end
