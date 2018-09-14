# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_09_14_111719) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "life_points"
    t.integer "attack_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fight_character_stats", force: :cascade do |t|
    t.integer "fight_id"
    t.integer "experience_earned"
    t.integer "self_damage"
    t.integer "enemy_damage"
    t.integer "weapon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_id"
    t.boolean "winner"
    t.index ["character_id"], name: "index_fight_character_stats_on_character_id"
    t.index ["fight_id"], name: "index_fight_character_stats_on_fight_id"
    t.index ["weapon_id"], name: "index_fight_character_stats_on_weapon_id"
  end

  create_table "fights", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player1_id"
    t.integer "player2_id"
    t.integer "weapon_player1_id"
    t.integer "weapon_player2_id"
    t.integer "winner_id"
    t.index ["player1_id"], name: "index_fights_on_player1_id"
    t.index ["player2_id"], name: "index_fights_on_player2_id"
    t.index ["weapon_player1_id"], name: "index_fights_on_weapon_player1_id"
    t.index ["weapon_player2_id"], name: "index_fights_on_weapon_player2_id"
    t.index ["winner_id"], name: "index_fights_on_winner_id"
  end

  create_table "overall_character_stats", force: :cascade do |t|
    t.integer "winner_rate"
    t.integer "experience"
    t.integer "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_overall_character_stats_on_character_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "attack_force"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
