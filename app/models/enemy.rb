class Enemy < ApplicationRecord
  validates_presence_of :name, :health, :offense, :defense
  validates_uniqueness_of :name

  has_many :story_enemies
  has_many :stories, through: :story_enemies
end
