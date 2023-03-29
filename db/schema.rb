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

ActiveRecord::Schema[7.0].define(version: 2023_03_28_133758) do
  create_table "acoustic_loads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index %w[author_type author_id],
            name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index %w[resource_type resource_id],
            name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"],
            name: "index_admin_users_on_reset_password_token",
            unique: true
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conceptors", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "driver_images", force: :cascade do |t|
    t.string "url"
    t.integer "driver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "brand_id"
    t.float "size"
    t.string "type"
    t.float "spl"
    t.string "frequency_range"
    t.string "loadspeaker_link"
    t.string "doc_files"
    t.string "glb_file"
    t.integer "thiele_small_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "images"
  end

  create_table "drivers_speakers", id: false, force: :cascade do |t|
    t.integer "speaker_id", null: false
    t.integer "driver_id", null: false
    t.index %w[driver_id speaker_id],
            name: "index_drivers_speakers_on_driver_id_and_speaker_id"
    t.index %w[speaker_id driver_id],
            name: "index_drivers_speakers_on_speaker_id_and_driver_id"
  end

  create_table "speaker_images", force: :cascade do |t|
    t.string "url"
    t.integer "speaker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.string "name"
    t.string "plan_file"
    t.integer "conceptor_id"
    t.integer "acoustic_load_id"
    t.float "sensitivity"
    t.string "hpf"
    t.float "f3"
    t.string "driver_sizes"
    t.string "frequency_range"
    t.string "hornsrep_file"
    t.string "akabak_file"
    t.string "glb_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "images"
  end

  create_table "thiele_smalls", force: :cascade do |t|
    t.integer "driver_id", null: false
    t.float "resonant_frequency"
    t.float "qes"
    t.float "qms"
    t.float "qts"
    t.float "vas"
    t.float "re"
    t.float "zmin"
    t.float "le"
    t.float "force_factor"
    t.float "rms"
    t.float "cms"
    t.float "mmd"
    t.float "mms"
    t.float "sd"
    t.float "edd"
    t.float "driver_xmax"
    t.float "xlim"
    t.float "xmaxvd"
    t.float "efficiency"
    t.float "ebp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_thiele_smalls_on_driver_id"
  end

  add_foreign_key "thiele_smalls", "drivers"
end
