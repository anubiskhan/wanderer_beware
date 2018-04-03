class CreateProfessions < ActiveRecord::Migration[5.1]
  def change
    create_table :professions do |t|
      t.string :name
      t.integer :offense
      t.integer :defense
      t.integer :health

      t.timestamps
    end
  end
end
