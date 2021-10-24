require "rails_helper"

feature "delete a restaurant:" do
  let!(:admin) { create(:admin) }
  let!(:region) { create(:region) }
  let!(:restaurant) { create(:restaurant) }

  scenario "on the table view" do
    login_as(admin)
    visit "/regions/#{region.id}"
    
    save_and_open_page
    expect(page).to have_selector('#restaurant-view', visible: true)
    
    expect(page).to have_content(restaurant.name)
    page.find('i.fa-list').click

    click_on(class: 'fa-trash')
    expect(page).not_to have_content restaurant.name
  end

  scenario "on the card view" do
    login_as(admin)
    visit "/regions/#{region.id}"
    click_on(class: 'fa-table')
    expect(page).to have_content restaurant.name

    click_on(class: 'fa-trash')
    expect(page).not_to have_content restaurant.name
  end

  scenario "not logged in" do
    visit "/regions/#{region.id}"
    expect(page).not_to have_content 'fa-trash'
  end
end