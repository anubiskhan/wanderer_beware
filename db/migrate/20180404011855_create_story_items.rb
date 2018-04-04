class CreateStoryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :story_items do |t|
      t.references :story, foreign_key: true
      t.references :item, foreign_key: true
    end
  end
end
