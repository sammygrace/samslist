class PostsController < ApplicationController

  def new
    @tabs= %w{county city category subcategory content map photos preview}
    @post = Post.new
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
    fields = :slug, :county_id, :city_id, :category_id, :subcategory_id, :title, :price_cents, :street_address, :city, :state, :zip, :description, :email, :phone
    params.require(:post).permit(fields)
  end

end
