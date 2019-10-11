class CategoriesController < ApplicationController

  include Locationalize

  def show
    @category = Category.find_by(slug: params[:slug])
  end

end
