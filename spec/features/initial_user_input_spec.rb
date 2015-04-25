require 'rails_helper'

RSpec.feature "user enters ward and section to see possible dates" do
  xscenario "user selects ward and section from dropdown" do
    login_with_oauth

    select("01", from: "ward_id")
  end
end
