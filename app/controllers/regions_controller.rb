class RegionsController < ApplicationController
  def index
    @regions = Region.all.order(:city)
  end

  def show
    @region = Region.find(params[:id])
    @restaurants = @region.restaurants.order(rating: :desc)
  end
end
