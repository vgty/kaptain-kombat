class CreateCharacterStatsOveralls < ActiveRecord::Migration[5.2]
  def change
    create_table :character_stats_overalls do |t|
      t.integer :winner_rate
      t.integer :experience
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
