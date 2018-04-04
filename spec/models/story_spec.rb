require 'rails_helper'

describe Story do
  describe 'validations' do

    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:description)}
    it {should validate_uniqueness_of(:title)}
  end

  describe 'relationships' do
    it {is_expected.to have_many(:items).through(:story_items)}
    it {is_expected.to have_many(:enemies).through(:story_enemies)}
  end
end
