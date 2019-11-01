class CategoriesController < ApplicationController
  include Pagy::Backend
  include Locationize

  def show
    @category = Category.find_by(slug: params[:slug])
    @posts = Post.where(category_id: @category.id)
    @posts = location.posts.per_category(@category)
    @pagy, @posts = pagy(@posts, items: 12)
  end

end
