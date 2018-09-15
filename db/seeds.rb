# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Character.create(name: 'Goro', life_points: 10, attack_points: 10)
  Character.create(name: 'Kano', life_points: 9, attack_points: 13)
  Character.create(name: 'Raiden', life_points: 7, attack_points: 14)
  Character.create(name: 'Shang Tsung', life_points: 5, attack_points: 20)
  Character.create(name: 'Sonya Blade', life_points: 8, attack_points: 14)
  
  Weapon.create(name: 'Sword', attack_force: 4)
  Weapon.create(name: 'Hurricane', attack_force: 5)
  Weapon.create(name: 'Fire Ball', attack_force: 3)
  Weapon.create(name: 'Mystic Wave', attack_force: 7)
  
  Fight.create(player1_id: 1, player2_id: 2, weapon_player1_id: 2, weapon_player2_id: 3, winner_id: 1)
  Fight.create(player1_id: 1, player2_id: 1, weapon_player1_id: 3, weapon_player2_id: 3, winner_id: nil)
  Fight.create(player1_id: 3, player2_id: 1, weapon_player1_id: 1, weapon_player2_id: 3, winner_id: 3)
  Fight.create(player1_id: 2, player2_id: 4, weapon_player1_id: 2, weapon_player2_id: 1, winner_id: 4)
  
  OverallCharacterStat.create(character_id: 1, experience: 0, winner_rate: 0)
  OverallCharacterStat.create(character_id: 2, experience: 0, winner_rate: 0)
  OverallCharacterStat.create(character_id: 3, experience: 0, winner_rate: 0)
  OverallCharacterStat.create(character_id: 4, experience: 0, winner_rate: 0)
  OverallCharacterStat.create(character_id: 5, experience: 0, winner_rate: 0)
  
  FightCharacterStat.create(character_id: 1, experience_earned: 1, fight_id: 1, self_damage: 2, enemy_damage: 9, weapon_id: 2, winner: true)
  FightCharacterStat.create(character_id: 2, experience_earned: 0, fight_id: 1, self_damage: 9, enemy_damage: 2, weapon_id: 3, winner: false)
  FightCharacterStat.create(character_id: 1, experience_earned: 0, fight_id: 2, self_damage: 10, enemy_damage: 9, weapon_id: 3, winner: nil)
  FightCharacterStat.create(character_id: 1, experience_earned: 0, fight_id: 2, self_damage: 10, enemy_damage: 9, weapon_id: 3, winner: nil)
  FightCharacterStat.create(character_id: 3, experience_earned: 1, fight_id: 3, self_damage: 4, enemy_damage: 10, weapon_id: 1, winner: true)
  FightCharacterStat.create(character_id: 1, experience_earned: 0, fight_id: 3, self_damage: 10, enemy_damage: 4, weapon_id: 3, winner: false)
  FightCharacterStat.create(character_id: 2, experience_earned: 0, fight_id: 4, self_damage: 9, enemy_damage: 4, weapon_id: 2, winner: false)
  FightCharacterStat.create(character_id: 4, experience_earned: 1, fight_id: 4, self_damage: 4, enemy_damage: 9, weapon_id: 1, winner: true)
  
  
  
  
  
  
  
  