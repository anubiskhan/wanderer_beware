require 'rails_helper'

describe 'admin' do
  scenario 'can see all users' do
    admin = User.create!(username: 'Anubis Khan', email: 'poweroverwhelming@godmode.com', password: 'blacksheepwall', role: 1)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit admin_users_path

    expect(page).to have_content('All of the Adventurers')
  end

  scenario 'default user cannot see all users' do
    reg_user = User.create!(username: 'newbtube', email: 'ff@20.com', password: 'l2p')

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(reg_user)

    visit admin_users_path

    expect(page).to_not have_content('All of the Adventurers')
    expect(page).to have_content("The page you were looking for doesn't exist")
  end
end
