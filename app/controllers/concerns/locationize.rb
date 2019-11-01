module Locationize
  extend ActiveSupport::Concern

  included do
    before_action :set_location

    def set_location
      @city = City.find_by(slug: params[:city_slug])
      @county = @city.try(:county) || County.find_by(slug: params[:county_slug])
    end

    def location
      @city || @county
    end
  end

end
