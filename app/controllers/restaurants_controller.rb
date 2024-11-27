class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new()
  end

  def new
    @restaurant = Restaurant.new()
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def top
    # récupérer tout les restaurants qui ont 5 étoiles
    @restaurants = Restaurant.where(name: "Jack's Burger")
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
