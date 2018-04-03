require 'rails_helper'

describe 'authentication' do
  scenario 'allows a user to create an account' do
    User.destroy_all
    visit '/'

    click_on 'Create Account'

    expect(current_path).to eq(new_user_path)

    fill_in 'user[username]', with: 'Kelly Schroeder'
    fill_in 'user[email]', with: 'krschroeder@gmail.com'
    fill_in 'user[password]', with: 'one2three4five6'

    click_on 'Create User'

    expect(page).to have_content('Everyone in the village must have a profession')
    expect(current_path).to eq(edit_user_path(User.find_by(username: 'Kelly Schroeder')))

    click_on 'Blacksmith'

    expect(page).to have_content('Welcome to Gloamwood Village, Kelly Schroeder')
  end

  scenario 'allows a user to login successfully' do

    user = User.create(username: 'Kelly Schroeder', email: 'krschroeder@gmail.com', password: 'one2three4five6')
    visit '/'

    click_on 'Sign In'

    expect(current_path).to eq(login_path)

    fill_in 'username', with: user.username
    fill_in 'password', with: user.password

    click_on 'Log In'

    expect(current_path).to eq(user_path(user))

    expect(page).to have_content("Welcome to Gloamwood Village, #{user.username}")
    expect(page).to have_content('Log out')
  end

  scenario 'allows a user to logout successfully' do

    user = User.create(username: 'Kelly Schroeder', email: 'krschroeder@gmail.com', password: 'one2three4five6')

    visit '/'

    click_on 'Sign In'

    fill_in 'username', with: user.username
    fill_in 'password', with: user.password

    click_on 'Log In'

    click_on 'Log out'

    visit user_path(user.id)

    expect(page).to have_content("You need to log in to view this content")

  end
end
