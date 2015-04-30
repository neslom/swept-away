require 'rails_helper'

RSpec.feature "user enters ward and section to see possible dates" do
  let!(:sweep) { StreetSweep.create(ward_id: "01", section: "01", dates: "1,7", month: "4") }

  xscenario "user selects ward and section to see her area's schedule", js: true do
    login_with_oauth

    select("#{sweep.ward_id}", from: "ward_id")
    select("#{sweep.section}", from: "section")

    ["Your area's street sweeping schedule", sweep.print_month, sweep.print_days].each do |x|
      expect(page).to have_content(x)
    end
  end

  xscenario "user clicks ward on map and is shown schedules", js: true do
    login_with_oauth

    click_link_or_button("#{sweep.ward_id}"[1])

    ["Your area's street sweeping schedule", sweep.print_month, sweep.print_days].each do |x|
      expect(page).to have_content(x)
    end
  end
end
