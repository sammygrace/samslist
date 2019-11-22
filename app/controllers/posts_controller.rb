class PostsController < ApplicationController

  def new
    @tabs= %w{county city category subcategory content map photos preview}
    @post = Post.new
    @county = County.first
  end

  def show
    @post = Post.find_by(slug: params[:slug])
    @county = @post.county if @post.county || County.first
    @city = @post.city
    @category = @post.category
    @subcategory = @post.subcategory
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: "Post successfully created."
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:county_id, :city_id, :category_id, :subcategory_id, :slug, :state, :email, :phone, :description, :title, :zip, :price_cents, :city_or_province, :street_address, :photos => [] )
  end

end
