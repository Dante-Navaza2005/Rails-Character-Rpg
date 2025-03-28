class CreateSkills < ActiveRecord::Migration[8.0]
  def change
    create_table :skills do |t|
      t.references :character, null: false, foreign_key: true
      t.string :name
      t.string :ability
      t.integer :score
      t.boolean :proficient

      t.timestamps
    end
  end
end
