class CitiesController < ApplicationController

  def show
    include Locationalize
  end

end
