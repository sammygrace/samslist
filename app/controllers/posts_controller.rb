class PostsController < ApplicationController

  def new
    @tabs= %w{county city category subcategory content map photos preview}
  end

end
