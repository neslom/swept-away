class StreetSweep < ActiveRecord::Base
  def self.sections_by_ward(ward_id)
    where(ward_id: ward_id).pluck(:section).uniq
  end

  def self.schedules(ward_section)
    where(ward_section: ward_section).map do |schedule|
      { month: schedule.print_month, days: schedule.print_days }
    end
  end

  def print_days
    return "" if dates.nil?
    dates.split(",").map(&:to_i).map(&:ordinalize).join(" and ")
  end

  def print_month
    return "" if month.nil?
    Date::MONTHNAMES[self.month.to_i]
  end
end
