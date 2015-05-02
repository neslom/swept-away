class SessionsController < ApplicationController
  after_filter :prepare_unobtrusive_flash

  def create
    user = User.find_or_create_from_auth(auth_hash)

    if user && user.new_user?
      session[:user_id] = user.id
      session[:first_login] = 1
    elsif user
      session[:user_id] = user.id
    end
    flash[:notice] = "Welcome!"
    redirect_to root_path
  end

  def destroy
    reset_session
    flash[:notice] = "Goodbye!"
    redirect_to root_path
  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end
end
