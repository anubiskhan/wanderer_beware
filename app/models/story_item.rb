class StoryItem < ApplicationRecord
  belongs_to :item
  belongs_to :story
end
