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

ActiveRecord::Schema.define(version: 20170920011053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.integer "books_correct"
    t.integer "books_incorrect"
    t.integer "film_correct"
    t.integer "film_incorrect"
    t.integer "music_correct"
    t.integer "music_incorrect"
    t.integer "television_correct"
    t.integer "television_incorrect"
    t.integer "games_correct"
    t.integer "games_incorrect"
    t.integer "nature_correct"
    t.integer "nature_incorrect"
    t.integer "computers_correct"
    t.integer "computers_incorrect"
    t.integer "sports_correct"
    t.integer "sports_incorrect"
    t.integer "history_correct"
    t.integer "history_incorrect"
    t.integer "animals_correct"
    t.integer "animals_incorrect"
    t.integer "total_correct"
    t.integer "total_incorrect"
    t.integer "total_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
