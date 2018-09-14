class CreateCharacterStatsPerFights < ActiveRecord::Migration[5.2]
  def change
    create_table :character_stats_per_fights do |t|
      t.references :fight, foreign_key: true
      t.integer :experience_earned
      t.integer :self_damage
      t.integer :enemy_damage
      t.references :weapon, foreign_key: true

      t.timestamps
    end
  end
end
