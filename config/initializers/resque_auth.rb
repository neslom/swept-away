Rack::Auth::Basic.new(Resque::Server) do |user, password|
  user == ENV["RESQUE_WEB_HTTP_BASIC_AUTH_USER"] &&
  password == ENV["RESQUE_WEB_HTTP_BASIC_AUTH_PASSWORD"]
end
