class FightCharacterStat < ApplicationRecord
  belongs_to :character
  belongs_to :fight
  belongs_to :weapon
end
