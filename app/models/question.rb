class Question < ApplicationRecord
  belongs_to :user
  has_many :votes, :as => :votable
  has_many :answers

  validates :content, :presence => true
end
