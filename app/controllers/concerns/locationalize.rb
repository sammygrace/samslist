module Locationalize

  extend ActiveSupport::Concern

  included do 

    before_action :set_location

    def set_location
      @city = City.find_by(slug: params[:slug])
      @county = County.find_by(slug: params[:slug]) || @city.county
    end

  end

end
