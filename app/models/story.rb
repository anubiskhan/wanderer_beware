class Story < ApplicationRecord
  validates_presence_of :title, :description
  validates_uniqueness_of :title

  has_many :story_items
  has_many :items, through: :story_items
end
