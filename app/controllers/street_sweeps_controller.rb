class StreetSweepsController < ApplicationController
  def search
    respond_to do |format|
      if params[:ward_id] && !params[:section]
        format.json { render json: StreetSweep.sections_by_ward(params[:ward_id]) }
      else
        format.html do
          @schedules = StreetSweep.schedules(params[:ward_id], params[:section])
          render "dashboard/show"
        end
      end
    end
  end
end
