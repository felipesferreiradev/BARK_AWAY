class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :dog_walker, null: false, foreign_key: true
      t.boolean :confirmed

      t.timestamps
    end
  end
end
