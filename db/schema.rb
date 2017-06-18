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

ActiveRecord::Schema.define(version: 20170617155730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "title"
    t.text     "body"
    t.string   "name"
    t.string   "email"
    t.integer  "star",       default: 1
  end

end
