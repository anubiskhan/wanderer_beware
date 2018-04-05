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

  describe 'roll die' do
    it 'rolls a die' do
      story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')

      expect(story.roll_die).to be_within(2.5).of(3.5)
    end
  end
end
