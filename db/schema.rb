# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_15_040411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.bigint "candidate_id", null: false
    t.bigint "opportunity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_applications_on_candidate_id"
    t.index ["opportunity_id"], name: "index_applications_on_opportunity_id"
  end

  create_table "candidate_skills", force: :cascade do |t|
    t.integer "years"
    t.bigint "candidate_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_candidate_skills_on_candidate_id"
    t.index ["skill_id"], name: "index_candidate_skills_on_skill_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_candidates_on_user_id"
  end

  create_table "enterprise_favorite_skills", force: :cascade do |t|
    t.bigint "enterprise_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enterprise_id"], name: "index_enterprise_favorite_skills_on_enterprise_id"
    t.index ["skill_id"], name: "index_enterprise_favorite_skills_on_skill_id"
  end

  create_table "enterprise_locations", force: :cascade do |t|
    t.bigint "enterprise_id", null: false
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enterprise_id"], name: "index_enterprise_locations_on_enterprise_id"
    t.index ["location_id"], name: "index_enterprise_locations_on_location_id"
  end

  create_table "enterprises", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_enterprises_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "opportunities", force: :cascade do |t|
    t.string "job_title"
    t.text "job_description"
    t.string "contract_type"
    t.bigint "enterprise_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enterprise_id"], name: "index_opportunities_on_enterprise_id"
  end

  create_table "opportunity_skills", force: :cascade do |t|
    t.integer "years"
    t.bigint "opportunity_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["opportunity_id"], name: "index_opportunity_skills_on_opportunity_id"
    t.index ["skill_id"], name: "index_opportunity_skills_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "skill_type"
    t.string "short_description"
    t.text "long_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "candidates"
  add_foreign_key "applications", "opportunities"
  add_foreign_key "candidate_skills", "candidates"
  add_foreign_key "candidate_skills", "skills"
  add_foreign_key "candidates", "users"
  add_foreign_key "enterprise_favorite_skills", "enterprises"
  add_foreign_key "enterprise_favorite_skills", "skills"
  add_foreign_key "enterprise_locations", "enterprises"
  add_foreign_key "enterprise_locations", "locations"
  add_foreign_key "enterprises", "users"
  add_foreign_key "opportunities", "enterprises"
  add_foreign_key "opportunity_skills", "opportunities"
  add_foreign_key "opportunity_skills", "skills"
end
