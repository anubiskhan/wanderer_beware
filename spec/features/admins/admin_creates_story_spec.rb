require 'rails_helper'

describe 'admin' do
  scenario 'creates a story' do
    admin = User.create!(username: 'Anubis Khan', email: 'poweroverwhelming@godmode.com', password: 'blacksheepwall', role: 1)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit 'admin/stories/new'

    expect(page).to have_content('Create a story')

    fill_in 'story[title]', with: 'Story1'
    fill_in 'story[description]', with: 'An absolutely thrilling tale'


    click_on 'Create Story'

    expect(page).to have_content('Story1')
    expect(current_path).to eq(admin_stories_path)
  end
end
