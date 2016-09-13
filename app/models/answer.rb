class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :votes, :as => :votable

  validates :response, :presence => true
end
