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

ActiveRecord::Schema.define(version: 20170623044234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "unit_plan_id"
    t.integer  "user_id"
    t.index ["unit_plan_id"], name: "index_abilities_on_unit_plan_id"
    t.index ["user_id"], name: "index_abilities_on_user_id"
  end

  create_table "abilities_unit_plans", force: :cascade do |t|
    t.integer "unit_plan_id"
    t.integer "ability_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "attitudes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "unit_plan_id"
    t.integer  "user_id"
    t.index ["unit_plan_id"], name: "index_attitudes_on_unit_plan_id"
    t.index ["user_id"], name: "index_attitudes_on_user_id"
  end

  create_table "attitudes_unit_plans", force: :cascade do |t|
    t.integer "unit_plan_id"
    t.integer "attitude_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "plan_id"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
    t.index ["plan_id"], name: "index_feedbacks_on_plan_id"
  end

  create_table "learning_objectives", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "unit_plan_id"
    t.integer  "user_id"
    t.index ["unit_plan_id"], name: "index_learning_objectives_on_unit_plan_id"
    t.index ["user_id"], name: "index_learning_objectives_on_user_id"
  end

  create_table "learning_objectives_unit_plans", force: :cascade do |t|
    t.integer "unit_plan_id"
    t.integer "learning_objective_id"
  end

  create_table "plan_relations", force: :cascade do |t|
    t.integer  "semester"
    t.integer  "order"
    t.integer  "plan_id"
    t.integer  "unit_plan_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "grade"
    t.string   "subject"
    t.integer  "year"
    t.integer  "total_hours"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "plans_unit_plans", force: :cascade do |t|
    t.integer "unit_plan_id"
    t.integer "plan_id"
  end

  create_table "previous_learnings", force: :cascade do |t|
    t.text     "content"
    t.text     "generic_activity"
    t.text     "achievement_indicator"
    t.integer  "estimated_time"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "unit_plan_id"
    t.string   "title"
    t.integer  "user_id"
    t.index ["unit_plan_id"], name: "index_previous_learnings_on_unit_plan_id"
    t.index ["user_id"], name: "index_previous_learnings_on_user_id"
  end

  create_table "shared_plans", force: :cascade do |t|
    t.integer  "plan_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_shared_plans_on_plan_id"
    t.index ["user_id"], name: "index_shared_plans_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.string   "tagger_type"
    t.integer  "tagger_id"
    t.string   "context",       limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_teachers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "unit_heads", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_unit_heads_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_unit_heads_on_reset_password_token", unique: true, using: :btree
  end

  create_table "unit_plans", force: :cascade do |t|
    t.string   "title"
    t.integer  "total_hours_unit"
    t.text     "objective"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "plan_id"
    t.integer  "user_id"
    t.index ["plan_id"], name: "index_unit_plans_on_plan_id"
    t.index ["user_id"], name: "index_unit_plans_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "abilities", "unit_plans"
  add_foreign_key "attitudes", "unit_plans"
  add_foreign_key "feedbacks", "plans"
  add_foreign_key "learning_objectives", "unit_plans"
  add_foreign_key "previous_learnings", "unit_plans"
  add_foreign_key "unit_plans", "plans"
end
