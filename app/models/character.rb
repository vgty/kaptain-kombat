class Character < ApplicationRecord
  has_many :fights
  has_one :overall_character_stat, dependent: :destroy
  has_many :fight_character_stats
  
  has_one_attached :avatar
  
  validates_presence_of :name, :life_points, :attack_points
  validates_inclusion_of :life_points, in: 8..15
  validates_inclusion_of :attack_points, in: 5..10
end
