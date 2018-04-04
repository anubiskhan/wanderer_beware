require 'rails_helper'

describe Item do
  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:item_type)}
    it {should validate_presence_of(:offense)}
    it {should validate_presence_of(:defense)}
    it {should validate_uniqueness_of(:name)}
  end

  describe 'relationships' do
    it {is_expected.to have_many(:users).through(:user_items)}
  end
end
