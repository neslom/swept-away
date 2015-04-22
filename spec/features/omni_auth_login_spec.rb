require 'rails_helper'

RSpec.feature "user logs in via omniauth" do
  def login_with_oauth(service = :twitter)
    visit "/auth/#{service}"
  end

  scenario "creates new user" do
    visit root_path

    click_link_or_button("Sign in with Twitter")

    expect(page).to have_content("Welcome!")
  end
end
