class StreetSweep < ActiveRecord::Base
  def self.sections_by_ward(ward_id)
    where(ward_id: ward_id).pluck(:section).uniq
  end

  def self.schedules(ward_id, section)
    where(ward_id: ward_id, section: section)
  end
end
