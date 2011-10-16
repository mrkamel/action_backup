
require "active_resource"

class Time
  [ :sunday?, :monday?, :tuesday?, :wednesday?, :thursday?, :friday?, :saturday? ].each_with_index do |method, index|
    define_method(method) { wday == index }
  end

  def first_day_of_month?
    return mday == 1
  end

  def first_week_of_month?
    return mday.between?(1, 7)
  end 

  def first_month_of_quarter?
    return (Time.now.month - 1) % 3 == 0
  end 
end

