require 'rails_helper'

describe Profession do
  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:offense)}
    it {should validate_presence_of(:defense)}
    it {should validate_presence_of(:health)}
    it {should validate_uniqueness_of(:name)}
  end

  describe 'relationships' do
    it 'should have many users' do
      profession = Profession.find_by(name: 'Blacksmith')

      expect(profession).to respond_to(:users)
    end
  end
end
