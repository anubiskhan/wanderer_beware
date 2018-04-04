require 'rails_helper'

describe Enemy do
  describe 'validations' do

    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:health)}
    it {should validate_presence_of(:offense)}
    it {should validate_presence_of(:defense)}
    it {should validate_uniqueness_of(:name)}
  end

  describe 'relationships' do
    it {is_expected.to have_many(:stories).through(:story_enemies)}
  end
end
