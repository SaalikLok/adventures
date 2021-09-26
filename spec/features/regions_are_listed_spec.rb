require 'rails_helper'

RSpec.feature "regions are shown on the regions page", type: :feature do
  before :each do
    create(:region)
    create(:region)
    create(:region)
  end

  xscenario "All regions are visible on the regions index page" do
    visit '/regions'
  end
end
