class Gig < ApplicationRecord
  # this line looks for a host id which is on the user table.
  validates_presence_of :name, :location, :price, :seating_capacity
  belongs_to :host, :class_name => 'User', :foreign_key => :host_id
  has_many :bookings
  has_many :users, :through => :bookings
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
# example from Nick
# def booked_users
#   User.joins(:bookings).where("bookings.gig_id = ?" , id)
# end

end

