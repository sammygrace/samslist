class City < ApplicationRecord
  include Sluggerize

  validates_uniqueness_of :name

  belongs_to :county

  has_many :posts
end
