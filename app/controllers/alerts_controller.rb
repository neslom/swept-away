class AlertsController < ApplicationController
  respond_to :json
  before_action :logged_in?

  def welcome
    message = "Thanks, #{current_user.name}! You should be receiving a confirmation text right about now!"
    if current_user.update_attributes(phone_number: params[:phoneNumber])
      Resque.enqueue(WelcomeAlertJob, current_user.id)

      #Resque.enqueue_at(5.days.from_now, SweepingAlertJob, current_user.id)

      respond_with({ message: message}, :status => 201, :location => users_path(current_user.id))
    else
      respond_with({message: "Something went wrong."}, status: 400)
    end
  end
end
