class Profession < ApplicationRecord
  validates_presence_of :name, :offense, :defense, :health
  validates_uniqueness_of :name

  has_many :users
end
