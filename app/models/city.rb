class City < ApplicationRecord
  validates_uniqueness_of :name
  belongs_to :county

  include Sluggerize
end
