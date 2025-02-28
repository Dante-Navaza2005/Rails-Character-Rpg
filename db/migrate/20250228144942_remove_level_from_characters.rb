class RemoveLevelFromCharacters < ActiveRecord::Migration[8.0]
  def change
    remove_column :characters, :level, :integer
  end
end
