class CreateDogWalkers < ActiveRecord::Migration[7.0]
  def change
    create_table :dog_walkers do |t|
      t.string :full_name
      t.string :email
      t.string :city
      t.float :price

      t.timestamps
    end
  end
end
