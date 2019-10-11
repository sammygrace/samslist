module Locationalize
  extend ActiveSupport::Concern

  included do
    before_action :set_location

    def set_location
      @city = City.find_by(slug: params[:city_slug])
      @county = @city.try(:county) || County.find_by(slug: params[:county_slug])
    end
  end

end
