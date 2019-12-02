class County < ApplicationRecord
  include Sluggerize

  has_many :cities
  has_many :posts

  validates_uniqueness_of :name
end
