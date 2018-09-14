class Character < ApplicationRecord
  has_and_belongs_to_many :fights
  has_one :overall_character_stat
  has_many :fight_character_stats
end
