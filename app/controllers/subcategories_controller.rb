class SubcategoriesController < ApplicationController
  include Locationize
  include Pagy::Backend

  def show
    @subcategory = Subcategory.find_by(slug: params[:slug])
    @category = @subcategory.category
    @posts = location.posts.per_subcategory(@subcategory)
    title = "%#{params[:title]}%"
    price_min = params[:price_min]
    price_max = params[:price_max]
    @posts = @posts.filter_by(title)
    @posts = @posts.filter_price_min(price_min) if price_min.present?
    @posts = @posts.filter_price_max(price_max) if price_max.present?
    @pagy, @posts = pagy(@posts, items: 12)
  end

end
