class HotelsController < ApplicationController

    def index
      @hotels = Hotel.where(country: params[:country])
    end


  def show
    @hotel = Hotel.find(params[:id])
  end
end
