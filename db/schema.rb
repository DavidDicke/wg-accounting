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

ActiveRecord::Schema[8.0].define(version: 2025_02_28_191200) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "bank_account_admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "iban"
    t.string "bic"
    t.string "bank_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_date"
    t.date "close_date"
  end

  create_table "contract_services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string "contract_number"
    t.string "meter_number"
    t.string "notice_period"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_date"
    t.date "end_date"
  end

  create_table "flats", force: :cascade do |t|
    t.string "address"
    t.float "sqm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.date "date_invoice"
    t.integer "amount"
    t.date "date_advance_new_payment_amount"
    t.integer "advance_payment_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "invoice_number"
  end

  create_table "rooms", force: :cascade do |t|
    t.float "sqm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_providers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "fixed_amount"
    t.integer "variable_cost_amount"
    t.string "variable_cost_unit"
    t.date "date_change"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "amount"
    t.date "date"
    t.text "comment"
    t.string "transaction_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
