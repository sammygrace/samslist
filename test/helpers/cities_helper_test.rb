require 'test_helper'

class CitiesHelperTest < ActionView::TestCase

  test "active_city returns 'active' if the current city is @city" do

    @city = nil
    city = City.first
    assert active_city(city) == nil

    @city = City.first
    city = City.first
    assert active_city(city) == 'active'

  end

end
