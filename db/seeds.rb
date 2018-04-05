# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# UserItem.destroy_all
# StoryItem.destroy_all
# StoryEnemy.destroy_all
# Profession.destroy_all

Profession.create(name: 'Alchemist', offense: 4, defense: 1, health: 3)
Profession.create(name: 'Blacksmith', offense: 1, defense: 3, health: 4)
Profession.create(name: 'Trapper', offense: 2, defense: 2, health: 4)

item_copper_sword = Item.create(name: 'Copper Sword', item_type: 'Weapon', offense: 1, defense: 1)
item_birch_bow = Item.create(name: 'Birch Bow', item_type: 'Weapon', offense: 2, defense: 0)
item_birch_staff = Item.create(name: 'Birch Staff', item_type: 'Weapon', offense: 2, defense: 0)
item_leather_helmet = Item.create(name: 'Leather Helmet', item_type: 'Helmet', offense: 1, defense: 0)
item_iron_helmet = Item.create(name: 'Iron Helmet', item_type: 'Helmet', offense: 3, defense: 0)
item_leather_tunic = Item.create(name: 'Leather Tunic', item_type: 'Armor', offense: 1, defense: 0)
item_chain_vest = Item.create(name: 'Chain Vest', item_type: 'Armor', offense: 3, defense: 0)

enemy_thief = Enemy.create(name: 'Bill the Thief', health: 2, offense: 3, defense: 2)
enemy_cat = Enemy.create(name: 'CatAgain', health: 2, offense: 3, defense: 1)
enemy_ogre = Enemy.create(name: 'Kerhs the Ogre', health: 3, offense: 1, defense: 3)
enemy_wolf = Enemy.create(name: 'Who Wolf', health: 2, offense: 2, defense: 2)
enemy_test = Enemy.create(name: 'Capybara', health: 5, offense: 1, defense: 1)

story_thief = Story.create(title: 'Thieves Guild', description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')
story_cat = Story.create(title: 'Outta the bag...', description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')
story_ogre = Story.create(title: 'Dreamworks gonna sue', description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')
story_wolf = Story.create(title: "He's right there!", description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')
story_test = Story.create(title: 'Testing a theory', description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')

StoryItem.create(story_id: story_thief.id, item_id: item_copper_sword.id)
StoryItem.create(story_id: story_thief.id, item_id: item_leather_tunic.id)
StoryEnemy.create(story_id: story_thief.id, enemy_id: enemy_thief.id)

StoryItem.create(story_id: story_cat.id, item_id: item_leather_helmet.id)
StoryEnemy.create(story_id: story_cat.id, enemy_id: enemy_cat.id)

StoryItem.create(story_id: story_ogre.id, item_id: item_birch_staff.id)
StoryItem.create(story_id: story_ogre.id, item_id: item_birch_bow.id)
StoryEnemy.create(story_id: story_ogre.id, enemy_id: enemy_ogre.id)

StoryItem.create(story_id: story_wolf.id, item_id: item_iron_helmet.id)
StoryEnemy.create(story_id: story_wolf.id, enemy_id: enemy_wolf.id)

StoryItem.create(story_id: story_test.id, item_id: item_chain_vest.id)
StoryEnemy.create(story_id: story_test.id, enemy_id: enemy_test.id)
