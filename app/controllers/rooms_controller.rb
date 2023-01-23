class RoomsController < ApplicationController

  def index
    @rooms = Room.where(hotel_id: params[:hotel_id])
  end


  def show
    @room = Room.find(params[:id])
  end

end
