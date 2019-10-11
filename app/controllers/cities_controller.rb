class CitiesController < ApplicationController

  def show
    @city = City.find_by(slug: params[:slug])
    @county = @city.county
  end

end
