class SubcategoriesController < ApplicationController

  include Locationalize

  def show
    @subcategory = Subcategory.find_by(slug: params[:slug])
    @category = @subcategory.category
    @post = Post.where(subcategory_id: @subcategory.id)
  end

end
