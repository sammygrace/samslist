class CategoriesController < ApplicationController

  include Locationalize

  def show
    @category = Category.find_by(slug: params[:slug])
    @posts = Post.where(category_id: @category.id)
  end

end
