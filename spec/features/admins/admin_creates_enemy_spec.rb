require 'rails_helper'

describe 'admin' do
  scenario 'creates an enemy' do
    admin = User.create!(username: 'Anubis Khan', email: 'poweroverwhelming@godmode.com', password: 'blacksheepwall', role: 1)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit 'admin/enemies/new'

    expect(page).to have_content('Create an enemy')

    fill_in 'enemy[name]', with: 'Gregory'
    fill_in 'enemy[health]', with: '3'
    fill_in 'enemy[offense]', with: '3'
    fill_in 'enemy[defense]', with: '3'

    click_on 'Create Enemy'

    expect(page).to have_content('Gregory')
    expect(current_path).to eq(admin_enemies_path)
  end
end