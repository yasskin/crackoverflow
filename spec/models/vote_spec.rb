require 'rails_helper'

RSpec.describe Vote, type: :model do


  it { should validate_presence_of :tally }
end
