module Sluggerize
  extend ActiveSupport::Concern

  included do 

    validates_uniqueness_of :slug
    before_save :set_slug

    def set_slug
      self.slug = slug_field.parameterize
    end

    def to_param
      slug
    end

    def slug_field
      try(:name) || raise("Please set slug field value!!")
    end

  end
end
