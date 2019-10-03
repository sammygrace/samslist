class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @subcategory = Subcategory.find(params[:id])
  end

end
