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

ActiveRecord::Schema.define(version: 2020_03_09_184444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "business_streams", id: false, force: :cascade do |t|
    t.bigint "id"
    t.string "business_stream_name"
  end

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.string "profile_description"
    t.string "company_website_url"
  end

  create_table "education_details", id: false, force: :cascade do |t|
    t.bigint "user_account_id"
    t.string "certificate_degree_name"
    t.string "major"
    t.string "institute_university_name"
    t.date "starting_date"
    t.date "completion_date"
    t.string "percentage"
  end

  create_table "experience_details", id: false, force: :cascade do |t|
    t.bigint "user_account_id"
    t.string "is_current_job"
    t.string "start_date"
    t.string "end_date"
    t.string "job_title"
    t.string "company_name"
    t.string "job_location_city"
    t.string "job_location_state"
    t.string "job_location_country"
    t.string "description"
  end

  create_table "job_locations", force: :cascade do |t|
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
  end

  create_table "job_post_activities", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.bigint "job_post_id"
    t.date "apply_date"
  end

  create_table "job_post_skill_sets", id: false, force: :cascade do |t|
    t.bigint "skill_set_id"
    t.bigint "job_post_id"
    t.decimal "skill_level"
  end

  create_table "job_types", force: :cascade do |t|
    t.string "job_type"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigserial "posted_by_id", null: false
    t.bigserial "job_type_id", null: false
    t.bigserial "company_id", null: false
    t.date "created_date"
    t.string "job_description"
    t.bigserial "job_location_id", null: false
    t.string "is_active"
    t.string "is_company_hidden"
  end

  create_table "profiles", primary_key: "user_account_id", id: :bigint, default: nil, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.decimal "current_salary"
    t.string "is_annually_monthly"
    t.string "currency"
  end

  create_table "seeker_skill_set", id: false, force: :cascade do |t|
    t.bigint "user_account_id"
    t.bigint "skill_set_id"
    t.string "skill_level"
  end

  create_table "skill_sets", force: :cascade do |t|
    t.string "skill_set_name"
  end

  create_table "user_logs", id: false, force: :cascade do |t|
    t.bigint "user_account_id"
    t.date "last_login_date"
    t.string "last_job_apply_date"
  end

  create_table "user_types", id: false, force: :cascade do |t|
    t.string "id"
    t.string "user_type_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider", default: "email", null: false
    t.string "email", null: false
    t.string "uid", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "unconfirmed_email"
    t.integer "sign_in_count", default: 0
    t.json "tokens", default: {}, null: false
    t.boolean "must_change_password", default: false
    t.string "locale"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "job_post_activities", "jobs", column: "job_post_id", name: "job_post__fk_1"
  add_foreign_key "job_post_activities", "users", name: "job_post_activities_fk"
  add_foreign_key "jobs", "companies", name: "jobs_fk_2"
  add_foreign_key "jobs", "job_locations", name: "jobs_fk_3"
  add_foreign_key "jobs", "job_types", name: "jobs_fk"
  add_foreign_key "jobs", "users", column: "posted_by_id", name: "jobs_fk_1"
end
