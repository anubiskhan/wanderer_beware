class Story < ApplicationRecord
  validates_presence_of :title, :description
  validates_uniqueness_of :title

  has_many :story_items
  has_many :items, through: :story_items

  has_many :story_enemies
  has_many :enemies, through: :story_enemies
end
