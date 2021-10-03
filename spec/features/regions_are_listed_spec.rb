require 'rails_helper'

RSpec.feature "regions are shown on the regions page", type: :feature do
  let!(:region) { create(:region) } 

  scenario "Regions are visible on the regions index page" do
    visit '/'
    expect(page).to have_content region.city
    expect(page).to have_content region.state
    expect(page).to have_content region.country
  end

  scenario "Clicking on a region card navigates to region show" do
    visit '/'
    click_link 'Austin'
    expect(page).to have_current_path(region_path(region.id))
  end
end
