class Fight < ApplicationRecord
  has_and_belongs_to_many :player1, class_name: "Character"
  has_and_belongs_to_many :player2, class_name: "Character"
  has_and_belongs_to_many :winner, class_name: "Character"
  has_and_belongs_to_many :weapon_player1, class_name: "Weapon"
  has_and_belongs_to_many :weapon_player2, class_name: "Weapon"
end
