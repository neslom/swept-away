class AlertsController < ApplicationController
  respond_to :json
  before_action :logged_in?

  def welcome
    message = "Thanks, #{current_user.name}! You should be receiving a confirmation text right about now!"
    if current_user.update_attributes(phone_number: params[:phoneNumber])
      respond_with({ message: message}, :status => 201, :location => users_path(current_user.id))
    else
      respond_with({message: "Something went wrong."}, status: 400)
    end
  end

  private

  def logged_in?
    if !current_user
      respond_with({message: "Please login first"}, status: 400, location: root_path)
    end
  end
end
