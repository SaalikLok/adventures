require "rails_helper"

feature "The restaurants list on the regions show page" do
  before :each do
    create(:region)
    create(:restaurant)
  end
  
  xscenario "visiting the regions show page shows the list of restaurants in that region" do
  end

  xscenario "filters are present on the show page" do
  end

  xscenario "clicking a restaurant card flips it over to show notes" do
  end
end
