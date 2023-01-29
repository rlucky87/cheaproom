class DashboardsController < ApplicationController

  def show
    @bookings = Booking.where(status: "accepted")
    @bookings_details = []
    @bookings.each do |booking|
      room = Room.find(booking.room_id)
      days = (booking.departure_date - booking.arrival_date).to_i
      price = room.price * days
      @bookings_details << {
        room: room,
        arrival_date: booking.arrival_date,
        departure_date: booking.departure_date,
        price: price,
        status: booking.status
      }
    end
  end
end
