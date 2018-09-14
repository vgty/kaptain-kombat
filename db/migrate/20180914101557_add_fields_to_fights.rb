class AddFieldsToFights < ActiveRecord::Migration[5.2]
  def change
    change_table :fights do |t|
      t.references :player1
      t.references :player2
      t.references :weapon_player1
      t.references :weapon_player2
      t.references :winner
    end
  end
end
