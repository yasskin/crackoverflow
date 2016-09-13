class User < ApplicationRecord
  has_many :questions
  has_many :votes
  has_many :answers
  has_secure_password

  validates :name, :presence => true
end
