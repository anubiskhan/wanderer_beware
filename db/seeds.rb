# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profession.destroy_all

Profession.create(name: 'Alchemist', offense: 4, defense: 1, health: 3)
Profession.create(name: 'Blacksmith', offense: 1, defense: 3, health: 4)
Profession.create(name: 'Trapper', offense: 2, defense: 2, health: 4)
