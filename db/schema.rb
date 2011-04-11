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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110411134314) do

  create_table "accomplishments", :force => true do |t|
    t.integer  "career_id"
    t.string   "description"
    t.integer  "display_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "achievements", :force => true do |t|
    t.integer  "career_id"
    t.string   "re_name"
    t.integer  "display_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "careers", :force => true do |t|
    t.integer  "work_experience_id"
    t.string   "employer"
    t.string   "duration"
    t.string   "position"
    t.text     "description"
    t.integer  "display_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cover_letters", :force => true do |t|
    t.integer  "jobvert_id"
    t.string   "re_name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobverts", :force => true do |t|
    t.string   "position"
    t.string   "company"
    t.string   "website"
    t.string   "found_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "praises", :force => true do |t|
    t.integer  "recommendation_id"
    t.text     "comment"
    t.string   "reference_name"
    t.string   "reference_title"
    t.string   "employer"
    t.string   "year"
    t.integer  "display_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recommendations", :force => true do |t|
    t.integer  "jobvert_id"
    t.string   "re_name"
    t.integer  "display_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responsibilities", :force => true do |t|
    t.integer  "career_id"
    t.string   "description"
    t.integer  "display_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.integer  "career_id"
    t.string   "description"
    t.integer  "display_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trophies", :force => true do |t|
    t.integer  "achievement_id"
    t.string   "title"
    t.text     "description"
    t.string   "achieved_on"
    t.integer  "display_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_experiences", :force => true do |t|
    t.integer  "jobvert_id"
    t.string   "re_name"
    t.integer  "display_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
