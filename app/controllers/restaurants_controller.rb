class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = get_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path
    else
      render "new"
    end
  end

  def edit
    @restaurant = get_restaurant
  end

  def update
    @restaurant = get_restaurant
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant), notice: "Restaurant successfully updated"
    else
      render "edit"
    end
  end

  def destroy
    @restaurant = get_restaurant
    @restaurant.destroy
    redirect_to restaurant_path
  end

  private
  def get_restaurant
    Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :food_category, :neighborhood_id)
  end
end
