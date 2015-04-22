RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

Capybara.default_host = "http://localhost:3000"

OmniAuth.config.test_mode = true
OmniAuth.config.add_mock(:twitter, {
  uid: "123456789",
  name: "Markus",
  image_url: "http://pbs.twimg.com/profile_images/542764285747662848/BRmaGBPU_normal.jpeg",
  token: "2442504061-52NtnkpgGzSDtwKr74l7tZ10XVNt3VfVqDbeXg6"
})

