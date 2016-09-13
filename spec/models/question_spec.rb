require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of :content }
  it { should have_many :votes }
  it { should belong_to :user }
end
