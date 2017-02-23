class AddPhotoToGig < ActiveRecord::Migration[5.0]
  def change
    add_column :gigs, :photo, :string
  end
end
