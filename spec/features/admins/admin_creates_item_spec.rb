require 'rails_helper'

describe 'admin' do
  scenario 'creates an item' do
    admin = User.create!(username: 'Anubis Khan', email: 'poweroverwhelming@godmode.com', password: 'blacksheepwall', role: 1)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit 'admin/items/new'

    expect(page).to have_content('Create an item')

    fill_in 'item[name]', with: 'sword'
    fill_in 'item[item_type]', with: 'Weapon'
    fill_in 'item[offense]', with: '1'
    fill_in 'item[defense]', with: '0'

    click_on 'Create Item'

    expect(page).to have_content('sword')
    expect(current_path).to eq(admin_items_path)
  end
end
