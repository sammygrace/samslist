class CountiesController < ApplicationController

  def show 
    @county = County.find(params[:id]) if @county
  end

end
