require 'rails_helper'

RSpec.describe Article, type: :model do
  it { should have_many(:comments).dependent(:destroy) }
end
