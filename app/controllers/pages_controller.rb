class PagesController < ApplicationController
  def arena    
    @player1 = Character.all.sample
    @player2 = Character.all.sample
  end
  
  def custom_arena
    @fight = Fight.find(params["fight_id"])
    @player1 = @fight.player1
    @player2 = @fight.player1
  end
  
  def create_score
    @fight = Fight.find(params["fight_id"])
    @player1_stats = FightCharacterStat.create(fight_id: @fight.id,
                                               character_id: @fight.player1.id,
                                               experience_earned: params['experience_earned_1'],
                                               self_damage: params['self_damage_1'],
                                               enemy_damage: params['enemy_damage_1'],
                                               weapon_id: params['weapon_id_1'],
                                               winner: params['winner_1'],
                                              )
    @player2_stats = FightCharacterStat.create(fight_id: @fight.id,
                                               character_id: @fight.player2.id,
                                               experience_earned: params['experience_earned_2'],
                                               self_damage: params['self_damage_2'],
                                               enemy_damage: params['enemy_damage_2'],
                                               weapon_id: params['weapon_id_2'],
                                               winner: params['winner_2'],
    
                                              )
    redirect_to :controller => 'pages',
                :action => 'show_score',
                :fight_id => @fight.id
end
  def show_score
    @fight = Fight.find(params["fight_id"])
    @player1 = @fight.player1
    @player2 = @fight.player2
    
    @player1_stats = FightCharacterStat.find_by(fight_id:  @fight.id, character_id: @player1.id)
    @player2_stats = FightCharacterStat.find_by(fight_id:  @fight.id, character_id: @player2.id)
  end
  
private

  def score_params
    params.require(:fight_character_stat).permit(:fight_id, :experience_earned, :self_damage, :enemy_damage, :character_id, :winner)
  end

end
