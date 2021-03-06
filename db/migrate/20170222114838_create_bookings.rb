class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :gig, foreign_key: true
      t.integer :quantity
      t.string :rating_description
      t.integer :rating

      t.timestamps
    end
  end
end
