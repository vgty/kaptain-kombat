class Character < ApplicationRecord
  has_many :fights, dependent: :destroy
  has_one :overall_character_stat, dependent: :destroy
  has_many :fight_character_stats
  
  has_one_attached :avatar
end
