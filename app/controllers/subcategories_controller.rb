class SubcategoriesController < ApplicationController
  include Locationize
  include Pagy::Backend

  def show
    @subcategory = Subcategory.find_by(slug: params[:slug])
    @category = @subcategory.category
    @posts = location.posts.per_subcategory(@subcategory)
    @pagy, @posts = pagy(@posts, items: 12)
  end

end
