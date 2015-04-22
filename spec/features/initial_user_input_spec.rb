require 'rails_helper'

RSpec.feature "user enters ward and section to see possible dates" do
  scenario "user selects ward and section from dropdown" do
    login_with_oauth

    select("01", from: "location[ward]")
  end
end
