require 'rails_helper'

RSpec.feature "user logs in via omniauth" do
  scenario "creates new user" do
    expect(User.count).to eq(0)

    login_with_oauth

    expect(page).to have_link("Logout")
    expect(User.count).to eq(1)
  end

  scenario "user logs out" do
    login_with_oauth
    click_link_or_button("Logout")

    expect(page).to have_content("Sign in")
  end
end
