# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20121116000314) do

  create_table "bumps", :force => true do |t|
    t.integer  "post_id"
    t.integer  "bumper_id"
    t.integer  "bumped_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "feeds", :force => true do |t|
    t.string   "post"
    t.integer  "following_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "follows", :force => true do |t|
    t.integer  "following_id"
    t.integer  "follower_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "internal_posts", :force => true do |t|
    t.text     "body"
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "memberships", ["team_id"], :name => "index_memberships_on_team_id"
  add_index "memberships", ["user_id"], :name => "index_memberships_on_user_id"

  create_table "readings", :force => true do |t|
    t.integer  "stress_level"
    t.integer  "glucose_reading"
    t.integer  "exercise_level"
    t.integer  "carbs_consumed"
    t.integer  "unit_output"
    t.string   "post"
    t.integer  "user_id"
    t.boolean  "stress_level_public"
    t.boolean  "glucose_reading_public"
    t.boolean  "exercise_level_public"
    t.boolean  "carbs_consumed_public"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "teams", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.string   "tags"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "password"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "votes", :force => true do |t|
    t.boolean  "vote",          :default => false, :null => false
    t.integer  "voteable_id",                      :null => false
    t.string   "voteable_type",                    :null => false
    t.integer  "voter_id"
    t.string   "voter_type"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "votes", ["voteable_id", "voteable_type"], :name => "index_votes_on_voteable_id_and_voteable_type"
  add_index "votes", ["voter_id", "voter_type", "voteable_id", "voteable_type"], :name => "fk_one_vote_per_user_per_entity", :unique => true
  add_index "votes", ["voter_id", "voter_type"], :name => "index_votes_on_voter_id_and_voter_type"

end
