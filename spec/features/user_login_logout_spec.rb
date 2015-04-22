require 'rails_helper'

RSpec.feature "user logs in via omniauth" do

  def login_with_oauth(service = :twitter)
    visit "/auth/#{service}"
  end

  before(:each) do
    Capybara.default_host = "http://localhost:3000"
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
      uid: "123456789",
      info: {
      name: "Markus",
      image: "http://pbs.twimg.com/profile_images/542764285747662848/BRmaGBPU_normal.jpeg",
      },
      credentials: {
      token: "2442504061-52NtnkpgGzSDtwKr74l7tZ10XVNt3VfVqDbeXg6"
      }
    })
  end

  scenario "creates new user" do
    expect(User.count).to eq(0)

    login_with_oauth

    expect(page).to have_link("Logout")
    expect(User.count).to eq(1)
  end

  scenario "user logs out" do
    login_with_oauth
    click_link_or_button("Logout")

    expect(page).to have_content("Sign in with Twitter")
  end
end
