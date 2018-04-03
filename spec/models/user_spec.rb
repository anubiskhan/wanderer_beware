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
end
