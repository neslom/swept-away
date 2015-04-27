def login_with_oauth(service = :twitter)
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
  visit "/auth/#{service}"
end
