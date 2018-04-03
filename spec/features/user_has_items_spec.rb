require 'rails_helper'

describe 'items' do
  scenario 'user sees items in show page' do
    user = User.create(username: 'Kelly Schroeder', email: 'krschroeder@gmail.com', password: 'one2three4five6')
    item = Item.create(name: 'Sword', type: 'Weapon', offense: 1, defense: 0)
    
    visit user_path(user)

    expect(page).to have_content('Your Items')
    expect(page).to have_content(item.name)
  end
end
