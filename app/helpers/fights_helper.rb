module FightsHelper
  def winner(fight)
    if fight.player1.fight_character_stats.where(fight_id: fight.id).first.winner == true
      fight.player1.name
    elsif fight.player2.fight_character_stats.where(fight_id: fight.id).first.winner == true
      fight.player2.name
    else
      "Nobody"
    end
  end
end
