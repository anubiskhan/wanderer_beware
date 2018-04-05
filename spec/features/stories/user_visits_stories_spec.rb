require 'rails_helper'

describe 'stories' do
  scenario 'user sees all stories listed' do
    story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')

    visit stories_path

    expect(page).to have_content('Choose an adventure!')
    expect(page).to have_content(story.title)
  end

  scenario 'user select any story' do
    story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')
    story2 = Story.create(title: 'What?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')

    visit stories_path

    expect(page).to have_content('Choose an adventure!')
    expect(page).to have_content(story.title)
    expect(page).to have_content(story2.title)

    click_on 'What?? Wolf!'

    expect(current_path).to eq(story_path(story2))
  end

  scenario 'navbar has stories link' do
    visit '/'

    click_on 'Stories'
    
    expect(current_path).to eq(stories_path)
  end
end
