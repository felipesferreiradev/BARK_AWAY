class ChangeDogWalkers < ActiveRecord::Migration[7.0]
  def change
    remove_column :dog_walkers, :email, :string
    remove_column :dog_walkers, :full_name, :string
    remove_column :dog_walkers, :city, :string
    add_reference :dog_walkers, :user, foreign_key: true, null: false
  end
end
