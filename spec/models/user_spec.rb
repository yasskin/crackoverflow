require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :password }
  it { should have_many :votes }
  it { should have_many :questions }
  it { should have_many :answers }
end
