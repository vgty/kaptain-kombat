class Fight < ApplicationRecord
  belongs_to :player1, class_name: "Character"
  belongs_to :player2, class_name: "Character"
  belongs_to :weapon_player1, class_name: "Weapon"
  belongs_to :weapon_player2, class_name: "Weapon"
  

  def winner
    if FightCharacterStat.find(player1.id).winner == true
      player1
    else
      player2
    end
  end

end
