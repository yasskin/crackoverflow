class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :questions
  has_many :votes
  has_many :answers

  has_secure_password
  validates :password, :presence => true
  validates :name, :presence => true
end
