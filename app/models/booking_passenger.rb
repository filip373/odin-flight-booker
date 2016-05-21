class BookingPassenger < ActiveRecord::Base
  belongs_to(:passenger)
  belongs_to(:booking)
  has_one(:flight, through: :booking)
end
