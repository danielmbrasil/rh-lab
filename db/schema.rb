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

ActiveRecord::Schema[7.0].define(version: 2023_02_28_020029) do
  create_table "assignments", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "project_id", null: false
    t.date "starts_on", default: -> { "NOW()" }, null: false
    t.date "ends_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_assignments_on_employee_id"
    t.index ["project_id"], name: "index_assignments_on_project_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manager_id", null: false
    t.index ["manager_id"], name: "index_departments_on_manager_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string "registration", default: "", null: false
    t.integer "employee_id", null: false
    t.integer "department_id", null: false
    t.integer "position_id", null: false
    t.date "starts_on", default: -> { "NOW()" }, null: false
    t.date "ends_on"
    t.integer "reason", default: 0, null: false
    t.integer "salary", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employments_on_department_id"
    t.index ["employee_id"], name: "index_employments_on_employee_id"
    t.index ["position_id"], name: "index_employments_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.date "starts_on", default: -> { "NOW()" }, null: false
    t.date "ends_on"
    t.integer "budget"
    t.integer "spent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assignments", "employees"
  add_foreign_key "assignments", "projects"
  add_foreign_key "departments", "employees", column: "manager_id"
  add_foreign_key "employments", "departments"
  add_foreign_key "employments", "employees"
  add_foreign_key "employments", "positions"
end
