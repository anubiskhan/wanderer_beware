require 'rails_helper'

describe User do
  describe 'validations' do
    it {should validate_presence_of(:username)}
    it {should validate_presence_of(:email)}
    it {should validate_uniqueness_of(:username)}
    it {should validate_uniqueness_of(:email)}
  end

  describe 'roles' do
    it 'can be an admin' do
      admin = User.create!(username: 'Anubis Khan', email: 'poweroverwhelming@godmode.com', password: 'blacksheepwall', role: 1)

      expect(admin.admin?).to be_truthy
      expect(admin.role).to eq('admin')
    end

    it 'can be a default user' do
      reg_user = User.create!(username: 'newbtube', email: 'ff@20.com', password: 'l2p')

      expect(reg_user.default?).to be_truthy
      expect(reg_user.role).to eq('default')
    end
  end

  describe 'relationships' do
    it {is_expected.to have_many(:items).through(:user_items)}
  end

  describe 'user profession' do
    it 'a user has a profession' do
      user = User.create(username: 'Kelly Schroeder', email: 'krschroeder@gmail.com', password: 'one2three4five6', profession_id: Profession.find_by(name: 'Blacksmith').id)
      blacksmith = Profession.find(user.profession_id)

      expect(user.profession).to eq(blacksmith)
    end
  end

  describe 'user stats' do
    it 'user has stats equal to total from items and profession' do
      user = User.create(username: 'Kelly Schroeder', email: 'krschroeder@gmail.com', password: 'one2three4five6', profession_id: Profession.find_by(name: 'Blacksmith').id)
      item = Item.create(name: 'Sword', item_type: 'Weapon', offense: 1, defense: 0)
      UserItem.create(user_id: user.id, item_id: item.id)
  
    end
  end
end
