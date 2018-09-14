class RenameTableCharacterStatsPerFights < ActiveRecord::Migration[5.2]
  def change
    rename_table :character_stats_per_fights, :fight_character_stats
  end
end
