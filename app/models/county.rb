class County < ApplicationRecord
  validates_uniqueness_of :name
  has_many :cities

  include Sluggerize
end
