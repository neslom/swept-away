class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    if !current_user
      respond_with({ message: "Please login first." }, status: 400, location: root_path)
    end
  end

  helper_method :current_user, :logged_in?
end
