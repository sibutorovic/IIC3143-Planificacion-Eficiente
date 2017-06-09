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

ActiveRecord::Schema.define(version: 20170609210029) do

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "unit_plan_id"
    t.index ["unit_plan_id"], name: "index_abilities_on_unit_plan_id"
  end

  create_table "abilities_unit_plans", force: :cascade do |t|
    t.integer "unit_plan_id"
    t.integer "ability_id"
  end

  create_table "attitudes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "unit_plan_id"
    t.index ["unit_plan_id"], name: "index_attitudes_on_unit_plan_id"
  end

  create_table "attitudes_unit_plans", force: :cascade do |t|
    t.integer "unit_plan_id"
    t.integer "attitude_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "plan_id"
    t.index ["plan_id"], name: "index_feedbacks_on_plan_id"
  end

  create_table "learning_objectives", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "unit_plan_id"
    t.index ["unit_plan_id"], name: "index_learning_objectives_on_unit_plan_id"
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
    t.index ["unit_plan_id"], name: "index_previous_learnings_on_unit_plan_id"
  end

  create_table "unit_plans", force: :cascade do |t|
    t.string   "title"
    t.integer  "total_hours_unit"
    t.text     "objective"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "plan_id"
    t.index ["plan_id"], name: "index_unit_plans_on_plan_id"
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
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
