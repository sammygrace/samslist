class CategoriesController < ApplicationController

  def show
    @category = Category.find_by(slug: params[:slug])
    @city = City.find_by(slug: params[:city_slug])
    @county = @city.try(:county) || County.find_by(slug: params[:county_slug])
  end

end
