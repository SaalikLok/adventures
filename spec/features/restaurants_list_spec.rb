require "rails_helper"

feature "The restaurants list on the regions show page" do
  let!(:region) { create(:region) }
  let!(:restaurant) { create(:restaurant, region: region) }

  scenario "visiting the regions show page shows the list of restaurants in that region" do
    visit region_path(region.id)
    expect(page).to have_content(restaurant.name)
  end
  
  scenario "clicking the title nav directs to root" do
    visit region_path(region.id)
    click_link 'Adventures'
    expect(page).to have_current_path(root_path)
  end

  xscenario "filters are present on the show page" do
  end

  xscenario "clicking a restaurant card flips it over to show notes" do
  end
end
