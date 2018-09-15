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

ActiveRecord::Schema.define(version: 2018_09_15_142146) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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
    t.index ["player1_id"], name: "index_fights_on_player1_id"
    t.index ["player2_id"], name: "index_fights_on_player2_id"
    t.index ["weapon_player1_id"], name: "index_fights_on_weapon_player1_id"
    t.index ["weapon_player2_id"], name: "index_fights_on_weapon_player2_id"
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
