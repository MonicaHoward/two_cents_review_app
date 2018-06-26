class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :street, :city, :state))

    respond_to do |format|

    end
  end

  def index

  end

end
