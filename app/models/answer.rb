class Answer < ApplicationRecord
  belongs_to :user
  has_many :votes, :as => :votable

  validates :response, :presence => true
end
