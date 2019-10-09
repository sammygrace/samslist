class SubcategoriesController < ApplicationController

  def show
    @subcategory = Subcategory.find_by(slug: params[:slug])
    @category = @subcategory.category
    @city = City.find_by(slug: params[:city_slug])
    @county = @city.try(:county) || County.find_by(slug: params[:county_slug])
  end

end
