class RestaurantsController < ApplicationController
  protect_from_forgery prepend: true
  before_action :authenticate_admin!, only: [:new, :create]

  def new
    @region_cities = Region.select(:city).map { |region| region.city }
  end

  def create
    @restaurant = Restaurant.new(
      region: Region.find_by(city: params[:region]),
      name: params[:name],
      description: params[:description],
      rating: params[:rating],
      cuisine: params[:cuisine],
      notes: params[:notes]
    )
    
    if @restaurant.save
      redirect_to region_path(@restaurant.region)
    else
      flash[:alert] = "Whoops! #{@restaurant.errors.full_messages.to_sentence}"
      redirect_to new_restaurant_path
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end
end