class StreetSweepsController < ApplicationController
  respond_to :json, :html
  before_action :logged_in?, only: [:user_sections]

  def schedule
    @schedules = StreetSweep.schedules(params[:id]).to_json
    respond_with @schedules
  end

  def user_sections
    ss = StreetSweep.find_by(ward_section: params[:wardSection])
    if ss
      current_user.street_sweeps << ss
    end
    render nothing: true, status: :ok
  end
end
