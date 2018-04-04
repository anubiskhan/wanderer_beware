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

Item.create(name: 'Copper Sword', item_type: 'Weapon', offense: 1, defense: 1)
Item.create(name: 'Birch Bow', item_type: 'Weapon', offense: 2, defense: 0)
Item.create(name: 'Birch Staff', item_type: 'Weapon', offense: 2, defense: 0)
Item.create(name: 'Leather Helmet', item_type: 'Helmet', offense: 1, defense: 0)
Item.create(name: 'Iron Helmet', item_type: 'Helmet', offense: 3, defense: 0)
Item.create(name: 'Leather Tunic', item_type: 'Armor', offense: 1, defense: 0)
Item.create(name: 'Chain Vest', item_type: 'Armor', offense: 3, defense: 0)

Enemy.create(name: 'Bill the Thief', health: 2, offense: 3, defense: 2)
Enemy.create(name: 'CatAgain', health: 2, offense: 3, defense: 1)
Enemy.create(name: 'Kerhs the Ogre', health: 3, offense: 1, defense: 3)
Enemy.create(name: 'Who Wolf', health: 2, offense: 2, defense: 2)
Enemy.create(name: 'Capybara', health: 5, offense: 1, defense: 1)

Story.create(title: 'Story1', description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')
Story.create(title: 'Story2', description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')
Story.create(title: 'Story3', description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')
Story.create(title: 'Story4', description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')
Story.create(title: 'Story5', description: 'This is clearly an amazing description with stunning narrative, excellent character development, a love interest, and a shocking twist.')
