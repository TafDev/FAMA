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

ActiveRecord::Schema.define(version: 20170711152350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  end

  create_table "images", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.text     "description"
    t.text     "small_print"
    t.string   "attachable_type"
    t.integer  "attachable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["attachable_type", "attachable_id"], name: "index_images_on_attachable_type_and_attachable_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.string   "period"
    t.boolean  "photobooth",                 default: false
    t.boolean  "photobooth_attendant",       default: false
    t.boolean  "propbox",                    default: false
    t.boolean  "guestbook",                  default: false
    t.boolean  "key_ring",                   default: false
    t.boolean  "usb",                        default: false
    t.boolean  "public_liability_insurance", default: false
    t.boolean  "gif",                        default: false
    t.boolean  "interactive_touchscreen",    default: false
    t.boolean  "red_curtain_background",     default: false
    t.boolean  "unlimited_visits",           default: false
    t.boolean  "social_media_uploads",       default: false
    t.boolean  "personalised_messages",      default: false
    t.boolean  "green_screen",               default: false
    t.boolean  "facial_recognition",         default: false
    t.boolean  "red_carpet",                 default: false
    t.boolean  "free_keyrings",              default: false
    t.boolean  "free_pic_frames",            default: false
    t.boolean  "karaoke",                    default: false
    t.boolean  "merryoke",                   default: false
    t.boolean  "video_messages",             default: false
    t.boolean  "personalised_theme",         default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.float    "percent_discount"
    t.float    "amount_discount"
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "title"
    t.text     "body"
    t.string   "name"
    t.string   "email"
    t.integer  "star",       default: 1
    t.boolean  "approved",   default: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "product_id"
    t.float    "amount"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "date"
    t.string   "time"
    t.string   "postcode"
    t.text     "address"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "tx_status"
    t.string   "payment_type"
    t.string   "phone_number"
    t.index ["product_id"], name: "index_transactions_on_product_id", using: :btree
  end

  add_foreign_key "transactions", "products"
end
