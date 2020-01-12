ActiveRecord::Schema.define(version: 2020_01_12_171225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "meditation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meditation_id"], name: "index_comments_on_meditation_id"
  end

  create_table "meditations", force: :cascade do |t|
    t.string "theme"
    t.integer "duration"
    t.string "organizer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.text "content"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_replies_on_comment_id"
  end

  add_foreign_key "comments", "meditations"
  add_foreign_key "replies", "comments"
end
