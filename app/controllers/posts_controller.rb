class PostsController < ApplicationController

  def new
    @tabs= %w{county city category subcategory content map photos preview}
    @post = Post.new
  end

  def show
    @post = Post.find_by(slug: params[:slug])
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
    params.require(:post).permit(:county_id, :city_id, :category_id, :subcategory_id, :slug, :email, :phone, :description, :title, :zip, :price_cents, :city_or_province, :street_address, :photos => [] )
  end

end
