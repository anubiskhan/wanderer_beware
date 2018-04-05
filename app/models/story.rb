class Story < ApplicationRecord
  validates_presence_of :title, :description
  validates_uniqueness_of :title

  has_many :story_items
  has_many :items, through: :story_items

  has_many :story_enemies
  has_many :enemies, through: :story_enemies

  def roll_die
    rand(1..6)
  end

  def run_away(user)
    redirect_to user_path(user)
  end
end
