class StreetSweepsController < ApplicationController
  def search
    respond_to do |format|
      format.json { render json: sections }
    end
  end

  private

  def sections
    StreetSweep.where(ward_id: params[:street_sweep][:ward_id]).pluck(:section).uniq
  end
end
