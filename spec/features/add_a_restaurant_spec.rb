require "rails_helper"

feature "add a restaurant:" do
  let!(:region) { create(:region) }
  let!(:admin) { create(:admin) }

  before do
    login_as(admin)
    visit "/restaurants/new"
  end

  scenario "visiting the new restaurant path shows the form title" do
    expect(page).to have_content "Add a New Restaurant"
    expect(page).to have_content "If you're not Saalik or Jackie you shouldn't be here 😉"
  end

  scenario "correctly filling the form adds a new restaurant and redirects" do
    select "Austin", from: "region"
    fill_in "name", with: "Titaya Restaurant"
    fill_in "cuisine", with: "Thai"
    select "great", from: "rating"
    click_on "Add restaurant"

    expect(page).to have_current_path(region_path(region))
  end

  scenario "adding notes and correctly filling the form adds a new restaurant and redirects" do
    select "Austin", from: "region", visible: false
    fill_in "name", with: "Titaya Restaurant"
    fill_in "cuisine", with: "Thai"
    select "great", from: "rating"
    fill_in "notes", with: "Here is a long note. Titaya has fantastic cuisine and I can't even believe that it has that wowowow that pad thai is different. Good, and different."
    click_on "Add restaurant"

    expect(page).to have_current_path(region_path(region))
  end

  scenario "adding description and correctly filling the form adds a new restaurant and redirects" do
    select "Austin", from: "region"
    fill_in "name", with: "Titaya Restaurant"
    fill_in "cuisine", with: "Thai"
    select "great", from: "rating"
    fill_in "description", with: "A great Thai restaurant. This description is short and sweet."
    click_on "Add restaurant"

    expect(page).to have_current_path(region_path(region))
  end

  scenario "missing the restaurant name throws a flash message" do
    select "Austin", from: "region"
    fill_in "cuisine", with: "Thai"
    select "great", from: "rating"
    click_on "Add restaurant"

    expect(page).to have_content("Whoops!")
  end
end

