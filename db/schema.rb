# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_12_145538) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_buildpacks", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "buildpack_id", null: false
    t.integer "position", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_buildpacks_on_app_id"
    t.index ["buildpack_id"], name: "index_app_buildpacks_on_buildpack_id"
  end

  create_table "app_services", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "app_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_services_on_app_id"
    t.index ["service_id"], name: "index_app_services_on_service_id"
  end

  create_table "app_variables", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.string "name", null: false
    t.string "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_variables_on_app_id"
  end

  create_table "apps", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.string "url"
    t.boolean "is_active", default: true, null: false
    t.boolean "is_locked", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildpacks", force: :cascade do |t|
    t.string "name", null: false
    t.string "buildpack"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name", null: false
    t.string "service_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "app_buildpacks", "apps"
  add_foreign_key "app_buildpacks", "buildpacks"
  add_foreign_key "app_services", "apps"
  add_foreign_key "app_services", "services"
  add_foreign_key "app_variables", "apps"
end