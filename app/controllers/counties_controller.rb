class CountiesController < ApplicationController

  def show 
    @county = County.find_by(slug: params[:slug]) || County.first
  end

end
