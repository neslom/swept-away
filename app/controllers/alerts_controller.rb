class AlertsController < ApplicationController
  respond_to :json

  def welcome
    if current_user.update_attributes(phone_number: params[:phoneNumber])
      respond_with({ message: "Success!"}, :status => 201, :location => users_path(current_user.id))
    end
  end
end
