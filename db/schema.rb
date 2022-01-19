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

ActiveRecord::Schema.define(version: 2022_01_19_021506) do

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.integer "cities_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cities_id"], name: "index_addresses_on_cities_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "regions_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["regions_id"], name: "index_cities_on_regions_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.string "rut"
    t.datetime "start_date"
    t.string "status"
    t.datetime "birthdate"
    t.integer "roles_id", null: false
    t.integer "positions_id", null: false
    t.integer "businesses_id", null: false
    t.integer "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_employees_on_address_id"
    t.index ["businesses_id"], name: "index_employees_on_businesses_id"
    t.index ["positions_id"], name: "index_employees_on_positions_id"
    t.index ["roles_id"], name: "index_employees_on_roles_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "cities", column: "cities_id"
  add_foreign_key "cities", "regions", column: "regions_id"
  add_foreign_key "employees", "addresses"
  add_foreign_key "employees", "businesses", column: "businesses_id"
  add_foreign_key "employees", "positions", column: "positions_id"
  add_foreign_key "employees", "roles", column: "roles_id"
end
