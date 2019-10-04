class SubcategoriesController < ApplicationController

  def show
    @subcategory = Subcategory.find(params[:id])
    @category = @subcategory.category
  end

end
