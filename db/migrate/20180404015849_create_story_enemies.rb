class CreateStoryEnemies < ActiveRecord::Migration[5.1]
  def change
    create_table :story_enemies do |t|
      t.references :story, foreign_key: true
      t.references :enemy, foreign_key: true
    end
  end
end
