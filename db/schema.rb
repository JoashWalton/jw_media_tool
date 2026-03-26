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

ActiveRecord::Schema[8.1].define(version: 2026_02_27_044020) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.string "filename", null: false
    t.string "key", null: false
    t.text "metadata"
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "image_bible_characters", default: [], array: true
    t.string "image_caption"
    t.string "image_credit"
    t.string "image_file_name"
    t.string "image_file_path"
    t.string "image_file_size"
    t.integer "image_height"
    t.string "image_resolution"
    t.string "image_source_url"
    t.string "image_subject_keywords", default: [], array: true
    t.integer "image_width"
    t.string "publicaiton_article_title"
    t.string "publication_article_scripture"
    t.integer "publication_chapter_number"
    t.string "publication_chapter_title"
    t.string "publication_meeting_part"
    t.string "publication_month"
    t.integer "publication_page"
    t.integer "publication_paragraph_number"
    t.string "publication_paragraph_question"
    t.string "publication_paragraph_scriptures", default: [], array: true
    t.string "publication_paragraph_text"
    t.string "publication_title"
    t.string "publication_url"
    t.integer "publication_year"
    t.datetime "updated_at", null: false
  end

  create_table "morning_worship_videos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "speaker_first_name"
    t.string "speaker_last_name"
    t.string "theme"
    t.string "theme_scripture"
    t.text "theme_scripture_text"
    t.datetime "updated_at", null: false
    t.bigint "video_id", null: false
    t.index ["video_id"], name: "index_morning_worship_videos_on_video_id"
  end

  create_table "video_technical_details", force: :cascade do |t|
    t.integer "audio_channels"
    t.string "audio_codec"
    t.integer "audio_sample_rate"
    t.string "audio_stream"
    t.integer "bitrate"
    t.datetime "created_at", null: false
    t.decimal "duration", precision: 15, scale: 10
    t.integer "file_size"
    t.decimal "frame_rate", precision: 15, scale: 10
    t.integer "height"
    t.string "resolution"
    t.datetime "updated_at", null: false
    t.string "video_codec"
    t.bigint "video_id", null: false
    t.string "video_stream"
    t.integer "width"
    t.index ["video_id"], name: "index_video_technical_details_on_video_id"
  end

  create_table "video_transcriptions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "language", default: "en"
    t.string "model"
    t.string "output_format"
    t.jsonb "transcription_json"
    t.string "transcription_output_type"
    t.text "transcription_text"
    t.datetime "updated_at", null: false
    t.bigint "video_id", null: false
    t.index ["video_id"], name: "index_video_transcriptions_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "jw_org_url"
    t.string "local_video_file_path"
    t.datetime "updated_at", null: false
    t.integer "video_category", default: 0
    t.string "video_duration"
    t.string "video_title"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "morning_worship_videos", "videos"
  add_foreign_key "video_technical_details", "videos"
  add_foreign_key "video_transcriptions", "videos"
end
