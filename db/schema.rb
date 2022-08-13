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

ActiveRecord::Schema[7.0].define(version: 2022_08_13_143522) do
  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.datetime "due_date"
    t.string "status"
    t.integer "workplan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workplan_id"], name: "index_tasks_on_workplan_id"
  end

  create_table "workplan_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workplans", force: :cascade do |t|
    t.string "name"
    t.integer "workplan_category_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workplan_category_id"], name: "index_workplans_on_workplan_category_id"
  end

  add_foreign_key "tasks", "workplans"
  add_foreign_key "workplans", "workplan_categories"
end
