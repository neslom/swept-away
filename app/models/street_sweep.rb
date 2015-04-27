class StreetSweep < ActiveRecord::Base
  def self.sections_by_ward(ward_id)
    where(ward_id: ward_id).pluck(:section).uniq
  end

  def self.schedules(ward_id, section)
    where(ward_id: ward_id, section: section)
  end

  def print_days
    return "No data" if dates.nil?
    dates.split(",").map(&:to_i).map(&:ordinalize).join(" and ")
  end

  def print_month
    return "No data" if month.nil?
    Date::MONTHNAMES[self.month.to_i]
  end
end
