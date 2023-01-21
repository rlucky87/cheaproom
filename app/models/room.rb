class Room < ApplicationRecord
  belongs_to :hotel
  has_many :bookings
  has_many :reviews
end
