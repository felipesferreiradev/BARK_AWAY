class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :city, :string
    add_column :users, :full_name, :string
    add_column :users, :dog_breed, :string
  end
end
