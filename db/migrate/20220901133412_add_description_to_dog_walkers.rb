class AddDescriptionToDogWalkers < ActiveRecord::Migration[7.0]
  def change
    add_column :dog_walkers, :description, :text
  end
end
