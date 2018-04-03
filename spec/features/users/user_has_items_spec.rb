require 'rails_helper'

describe 'items' do
  scenario 'user sees items in show page' do
    skip
    user = User.create(username: 'Kelly Schroeder', email: 'krschroeder@gmail.com', password: 'one2three4five6')
    # stub current_user here for simulated login
    item = Item.create(name: 'Sword', item_type: 'Weapon', offense: 1, defense: 0)
    visit '/'

    click_on 'Sign In'

    expect(current_path).to eq(login_path)

    fill_in 'username', with: user.username
    fill_in 'password', with: user.password

    click_on 'Log In'

    visit user_path(user)

    expect(page).to have_content('Your Items')
    expect(page).to have_content(item.name)
  end
end
