require 'rails_helper'

RSpec.feature "user enters ward and section to see possible dates" do
  let!(:sweep) { StreetSweep.create(ward_id: "01", section: "01", dates: "1,7", month: "4") }

  xscenario "user selects ward and section to see her area's schedule", js: true do
    login_with_oauth

    select("#{sweep.ward_id}", from: "ward_id")
    select("#{sweep.section}", from: "section")

    expect(page).to have_content("Your area's street sweeping schedule")
  end
end
