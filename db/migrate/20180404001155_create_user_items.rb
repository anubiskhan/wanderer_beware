class CreateUserItems < ActiveRecord::Migration[5.1]
  def change
    create_table :user_items do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
    end
  end
end
