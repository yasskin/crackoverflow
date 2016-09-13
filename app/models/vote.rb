class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true

  validates :tally, :presence => true
end
