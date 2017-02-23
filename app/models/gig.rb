class Gig < ApplicationRecord
  # this line looks for a host id which is on the user table.
  belongs_to :host, :class_name => 'User', :foreign_key => :host_id
  has_many :bookings
  has_many :users, :through => :bookings

# example from Nick
# def booked_users
#   User.joins(:bookings).where("bookings.gig_id = ?" , id)
# end

end
