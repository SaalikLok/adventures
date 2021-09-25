require 'rails-helper'

RSpec.describe Restaurant, type: :model do
  let!(:restaurant) do

  end

  it "is invalid when latitude is not between -90 and 90 degrees" do
    restaurant.latitude = -124.53

    expect(restaurant).to_not be_valid
  end

  it "has a longitude between -180 and 180 degrees" do
    restaurant.longitude = 243.43

    expect(restaurant).to_not be_valid
  end
end
