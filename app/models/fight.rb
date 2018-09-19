class Fight < ApplicationRecord
  belongs_to :player1, class_name: "Character"
  belongs_to :player2, class_name: "Character"
  belongs_to :weapon_player1, class_name: "Weapon"
  belongs_to :weapon_player2, class_name: "Weapon"
  has_many :fight_character_stats
  
  
  def winner
    #Demeter law is watching you. Find something else !
    if player1.fight_character_stats.where(fight_id: id).first.winner == true
      player1
    else
      player2
    end
  end
end

