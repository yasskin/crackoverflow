require 'rails_helper'

RSpec.describe Answer, type: :model do
 it { should validate_presence_of :response }
 it { should have_many :votes }

 it { should belong_to :user }
end
