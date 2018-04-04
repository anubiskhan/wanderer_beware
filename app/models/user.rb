class User < ApplicationRecord
  has_secure_password

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  has_many :user_items
  has_many :items, through: :user_items

  enum role: [:default, :admin]
end
