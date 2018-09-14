class RenameTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :character_stats_overalls, :overall_character_stats
  end
end
