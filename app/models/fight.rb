class Fight < ApplicationRecord
  belongs_to :player1, class_name: "Character"
  belongs_to :player2, class_name: "Character"
  belongs_to :winner, class_name: "Character"
  belongs_to :weapon_player1, class_name: "Weapon"
  belongs_to :weapon_player2, class_name: "Weapon"
end
