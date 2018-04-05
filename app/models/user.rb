class User < ApplicationRecord
  has_secure_password

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  has_many :user_items
  has_many :items, through: :user_items

  enum role: [:default, :admin]

  def profession
    @profession ||= Profession.find(profession_id)
  end

  def stats
    { health: user_health, offense: user_offense, defense: user_defense}
  end

  def user_health
    profession.health
  end

  def user_offense
    profession.offense + items.sum(:offense)
  end

  def user_defense
    profession.defense + items.sum(:defense)
  end
end
