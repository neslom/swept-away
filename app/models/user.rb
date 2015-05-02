class User < ActiveRecord::Base
  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)

    user.name = data.info.name
    user.image_url = data.info.image
    user.token = data.credentials.token

    user.save

    user
  end

  def new_user?
    Time.now - self.created_at.to_time < 60
  end
end
