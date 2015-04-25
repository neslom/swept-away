class StreetSweepsController < ApplicationController
  def search
    respond_to do |format|
      if params[:ward_id] && !params[:section]
        format.json { render json: sections }
      else
        #format.json { render json: dates }
        format.html do
          @dates = dates
          render "dashboard/show"
        end
      end
    end
  end

  private

  def sections
    StreetSweep.where(ward_id: params[:ward_id]).pluck(:section).uniq
  end

  def dates
    StreetSweep.where(ward_id: params[:ward_id], section: params[:section])
  end
end
