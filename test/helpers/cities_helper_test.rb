require 'test_helper'

class CitiesHelperTest < ActionView::TestCase

  test "active_city returns 'active strong' if city is current city" do

    @city = nil 
    city = City.first
    assert active_city(city) == 'small'

    @city = City.first
    city = City.first
    assert active_city(city) == 'active strong'
  end

end
