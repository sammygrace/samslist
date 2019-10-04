module CitiesHelper

  def active_city(city)
    city == @city ? 'active strong' : 'small'
  end

end
