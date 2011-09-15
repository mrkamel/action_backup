
class Time
  [ :sunday?, :monday?, :tuesday?, :wednesday?, :thursday?, :friday?, :saturday? ].each_with_index do |method, index|
    define_method(method) { wday == index }
  end
end

