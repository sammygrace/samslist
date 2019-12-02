class City < ApplicationRecord
  include Sluggerize

  belongs_to :county

  has_many :posts

  validates_uniqueness_of :name
end
