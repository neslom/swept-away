module ApplicationHelper
  def ward_selector
    arr = []
    1.upto(32) do |i|
      arr << ["#{sprintf("%02d", i)}", "#{sprintf("%02d", i)}"]
    end
    arr
  end
end
