class Weapon < ApplicationRecord
  validates :name, uniqueness:   true,
  validates_presence_of :name, :attack_force
  validates_inclusion_of :attack_force, in: 10..15
end
