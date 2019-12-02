class CategoriesController < ApplicationController
  include Pagy::Backend
  include Locationize

  def show
    @category = Category.find_by(slug: params[:slug])
    title = "%#{params[:title]}%"
    price_min = params[:price_min]
    price_max = params[:price_max]
    @posts = location.posts.per_category(@category).filter_by(title)
    @posts = @posts.filter_price_min(price_min) if price_min.present?
    @posts = @posts.filter_price_max(price_max) if price_max.present?
    @posts = @posts.order(:price_cents)
    @pagy, @posts = pagy(@posts, items: 12)
  end

end
