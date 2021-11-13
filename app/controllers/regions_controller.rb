class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
    raw_restaurants = @region.restaurants.order(rating: :desc)
    @restaurants = transform_rating(raw_restaurants)
  end

  protected

  def transform_rating(restaurants)
    str_ratings = ["avoid", "meh", "good", "great", "AMAZE"]

    restaurants.each do |restaurant|
      restaurant.rating = str_ratings[restaurant.rating.to_i - 1]
    end
  end
end