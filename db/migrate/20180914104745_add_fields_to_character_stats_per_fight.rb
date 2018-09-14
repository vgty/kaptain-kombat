class AddFieldsToCharacterStatsPerFight < ActiveRecord::Migration[5.2]
  def change
    change_table :character_stats_per_fights do |t|
      t.references :character
      t.boolean :winner
    end
  end
end
