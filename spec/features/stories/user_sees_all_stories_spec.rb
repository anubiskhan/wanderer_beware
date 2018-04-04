require 'rails_helper'

describe 'stories' do
  scenario 'user sees items in show page' do
    story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')

    visit stories_path

    expect(page).to have_content('Choose an adventure!')
    expect(page).to have_content(story.title)
  end
end
