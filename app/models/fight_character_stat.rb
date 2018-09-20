class FightCharacterStat < ApplicationRecord
  belongs_to :character
  belongs_to :fight
  belongs_to :weapon
  
  validates :winner, inclusion: [true, false]
     
  validates_numericality_of :fight_id,
                            :experience_earned,
                            :self_damage,
                            :enemy_damage,
                            :weapon_id,
                            :character_id
                                               
  validates_presence_of :fight_id, 
                        :experience_earned,
                        :self_damage,
                        :enemy_damage,
                        :weapon_id,
                        :character_id,
                        :winner

end
