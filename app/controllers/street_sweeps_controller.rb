class StreetSweepsController < ApplicationController
  respond_to :json, :html

  def show
    @schedules = StreetSweep.schedules(params[:id]).to_json
    respond_with @schedules
  end
end
