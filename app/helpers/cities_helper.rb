module CitiesHelper

  def active_city(city)
    city == @city ? 'active' : nil
  end

end
