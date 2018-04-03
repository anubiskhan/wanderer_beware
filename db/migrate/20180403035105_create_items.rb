class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_type
      t.integer :offense
      t.integer :defense

      t.timestamps
    end
  end
end
