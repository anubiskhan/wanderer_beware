require 'rails_helper'

describe 'story' do
  scenario 'user reads about a specific story' do
    story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')

    visit story_path(story)

    expect(page).to have_content('Unsurprisingly I am just going to write filler here')
    expect(page).to have_content(story.title)
  end

  scenario 'user sees the items associated with a story' do
    story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')
    item = Item.create(name: 'Sword', item_type: 'Weapon', offense: 1, defense: 0)
    StoryItem.create(story_id: story.id, item_id: item.id)

    visit story_path(story)

    expect(page).to have_content(item.name)
  end

  scenario 'user sees the enemies associated with a story' do
    story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')
    enemy = Enemy.create(name: 'Fenrir', health: 5, offense: 3, defense: 3)
    StoryEnemy.create(story_id: story.id, enemy_id: enemy.id)

    visit story_path(story)

    expect(page).to have_content(enemy.name)
  end

  scenario 'user sees own stats displayed' do
    story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')
    user = User.create(username: 'Anubis Khan', email: 'poweroverwhelming@godmode.com', password: 'blacksheepwall', profession_id: Profession.find_by(name: 'Blacksmith').id)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit story_path(story)

    expect(page).to have_content(user.user_health)
    expect(page).to have_content(user.user_offense)
    expect(page).to have_content(user.user_defense)
  end

  scenario 'user steals item from story' do
    story = Story.create(title: 'Where?? Wolf!', description: 'Unsurprisingly I am just going to write filler here')
    item = Item.create(name: 'Sword', item_type: 'Weapon', offense: 1, defense: 0)
    StoryItem.create(story_id: story.id, item_id: item.id)
    user = User.create(username: 'Anubis Khan', email: 'poweroverwhelming@godmode.com', password: 'blacksheepwall', profession_id: Profession.find_by(name: 'Blacksmith').id)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit story_path(story)

    click_on "Steal Item"

    expect(user.items.first).to eq(item)
  end
end
