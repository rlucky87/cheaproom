class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @room = Room.find(params[:room_id])
    @booking.user = current_user
    @booking.status = "pending"
    @booking.room = @room
    if @booking.save
      redirect_to dashboard_path(@booking)
    else
      render 'room/show', status: :unprocessable_entity
    end

  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :room_id, :arrival_date, :departure_date, :total_price, :status)
  end


end
