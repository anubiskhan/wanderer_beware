require 'rails_helper'

describe 'story' do
  scenario 'user reads about a specific story' do
    story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')

    visit story_path(story)

    expect(page).to have_content('Unsurprisingly I am just going to write filler here')
    expect(page).to have_content(story.title)
  end
end
