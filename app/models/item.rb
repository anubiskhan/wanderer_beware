class Item < ApplicationRecord
  validates_presence_of :name, :item_type, :offense, :defense
  validates_uniqueness_of :name

  has_many :user_items
  has_many :users, through: :user_items

  has_many :story_items
  has_many :stories, through: :story_items
end
