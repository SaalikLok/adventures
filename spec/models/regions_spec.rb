require 'rails_helper'

RSpec.describe Region, type: :model do
  let!(:region) do
     Region.new(name: "someplace", latitude: -32.4, longitude: 45.2)
  end

  it "is valid with all required attribues" do
    expect(region).to be_valid
  end
  
  it "is invalid without a name" do
    region.name = nil

    expect(region).to_not be_valid
  end

  it "is invalid when latitude is not between -90 and 90 degrees" do
    region.latitude = -124.53

    expect(region).to_not be_valid
  end

  it "has a longitude between -180 and 180 degrees" do
    region.longitude = 243.43

    expect(region).to_not be_valid
  end
end