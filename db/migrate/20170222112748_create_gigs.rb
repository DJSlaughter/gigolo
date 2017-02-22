class CreateGigs < ActiveRecord::Migration[5.0]
  def change
    create_table :gigs do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.integer :seating_capacity
      t.string :description
      t.datetime :date
      t.integer :host_id, foreign_key: true, index: true

      t.timestamps
    end
  end
end
