require "rails_helper"

feature "add a restaurant on the region show page: " do
  let!(:region) { create(:region) }
  let!(:admin) { create(:admin) }

  scenario "if admin is logged in, successfully fill and submit the form" do
    login_as(admin)
    visit "/regions/#{region.id}"
    fill_in "name", with: "Titaya Restaurant"
    fill_in "cuisine", with: "Thai"
    fill_in "rating", with: 4
    click_on "Add restaurant"

    expect(page).to have_current_path(region_path(region))
  end

  scenario "if no one is logged in, the form can't be seen" do
    visit "/regions/#{region.id}"
    expect(page).not_to have_content("Add a New #{region.city} Restaurant")
  end
end