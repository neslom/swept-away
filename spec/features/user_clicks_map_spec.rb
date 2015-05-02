require "rails_helper"

RSpec.feature "map click displays schedule" do
  let!(:street_sweep) { create(:street_sweep) }
  xscenario "user clicks a location on the map to see the SS schedule", js: true do
    login_with_oauth

    expect(page).to have_content(street_sweep.ward_section)
  end
end
