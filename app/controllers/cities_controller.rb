class CitiesController < ApplicationController

  def show
    @city = City.find(params[:id])
    @county = @city.county
  end

end
