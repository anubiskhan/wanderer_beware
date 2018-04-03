require 'rails_helper'

describe 'items' do
  scenario 'user sees items in show page' do
    user = User.create(username: 'Kelly Schroeder', email: 'krschroeder@gmail.com', password: 'one2three4five6', profession_id: Profession.find_by(name: 'Blacksmith').id)
    item = Item.create(name: 'Sword', item_type: 'Weapon', offense: 1, defense: 0)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit user_path(user)

    expect(page).to have_content('Your Items')
    expect(page).to have_content(item.name)
  end
end
