require 'rails_helper'

RSpec.describe Region, type: :model do
  let!(:region) do
     Region.new(city: "Austin", state: "Texas", country: "USA")
  end

  it "is valid with all required attribues" do
    expect(region).to be_valid
  end
  
  it "is invalid without a city" do
    region.city = nil
    expect(region).to_not be_valid
  end

  it "is invalid without a state" do
    region.state = nil
    expect(region).to_not be_valid
  end

  it "is invalid without a country" do
    region.country = nil
    expect(region).to_not be_valid
  end
end