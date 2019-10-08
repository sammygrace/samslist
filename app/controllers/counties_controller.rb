class CountiesController < ApplicationController

  include Locationalize

  def show 
    @county = County.find_by(slug: params[:slug])
  end

end
