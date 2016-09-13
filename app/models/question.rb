class Question < ApplicationRecord
  belongs_to :user
  has_many :votes, :as => :votable

  validates :content, :presence => true
end
