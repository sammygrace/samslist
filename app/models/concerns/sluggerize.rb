module Sluggerize
  extend ActiveSupport::Concern

  included do
    before_save :generate_slug_from_slug_field
    validates_uniqueness_of :slug

    def generate_slug_from_slug_field
      self.slug = Slug.new(self).generate
    end

    def to_param
      slug
    end

    def slug_field
      try(:name) || raise("Name does not exist! Please set slug field.")
    end
  end
end
