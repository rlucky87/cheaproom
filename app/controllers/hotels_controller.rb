class HotelsController < ApplicationController

    def index
      @hotels = Hotel.where(country: params[:country])
    end


  def show
      @hotels = Hotel.where(country: params[:country])
    end

    def image
      @hotel.image
    end

end
