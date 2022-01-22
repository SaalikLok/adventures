class DashboardsController < ApplicationController
  protect_from_forgery prepend: true
  before_action :authenticate_admin!, only: [:index]

  def index
    @regions = Region.order(:city)
    @number_of_restaurants = Restaurant.all.count
  end
end
