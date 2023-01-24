class RoomsController < ApplicationController

  def index
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = Room.where(hotel_id: params[:hotel_id])
  end


  def show
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.where(hotel_id: params[:hotel_id])
  end

end
