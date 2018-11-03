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

ActiveRecord::Schema.define(version: 2018_11_03_224658) do

  create_table "avatars", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamers", force: :cascade do |t|
    t.string "usuario"
    t.integer "puntaje"
    t.integer "avatar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["avatar_id"], name: "index_gamers_on_avatar_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "gamer_id"
    t.integer "mision_id"
    t.integer "puntaje_mision"
    t.string "tiempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "state"
    t.index ["gamer_id"], name: "index_games_on_gamer_id"
    t.index ["mision_id"], name: "index_games_on_mision_id"
  end

  create_table "misions", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.integer "estado"
    t.string "tiempo"
    t.string "combinacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
