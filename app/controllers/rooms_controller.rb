class RoomsController < ApplicationController

  def index
    @rooms = Room.where(hotel_id: params[:hotel_id])
  end


  def show
    @room = Room.where(hotel_id: params[:hotel_id])
  end

end
