module ApplicationHelper
  
  def full_title(page_name = "")
    base_title = "AttendanceApp"
    if page_name.empty?
      base_title
    else
      page_name + "|" + base_title
    end
  end
  
  def round_to_nearest_15_minutes(time)
    return nil if time.nil?

    minutes = time.min
    rounded_minutes = (minutes / 15.0).round * 15
    time.change(min: rounded_minutes)
  end
  
end
