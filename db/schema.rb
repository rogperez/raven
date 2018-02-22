# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180220232845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ad_sizes", force: :cascade do |t|
    t.string "name"
    t.string "device_ids"
  end

  create_table "creative_builder_creatives", force: :cascade do |t|
    t.string "creative_feature_ids"
  end

  create_table "creative_features", force: :cascade do |t|
    t.string "name"
  end

  create_table "creative_formats_features", force: :cascade do |t|
    t.integer "group_id"
    t.integer "format_id"
    t.string  "creative_feature_ids"
  end

  create_table "creatives", force: :cascade do |t|
    t.string  "name"
    t.integer "creative_builder_id"
    t.integer "ad_size_id"
    t.string  "type"
    t.integer "primary_feature_id"
  end

  create_table "flights", force: :cascade do |t|
    t.jsonb "creative_configuration"
  end

  create_table "formats", force: :cascade do |t|
    t.string "name"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "rate_cards", force: :cascade do |t|
  end

  create_table "rate_plans", force: :cascade do |t|
    t.integer "rate_card_id"
    t.jsonb   "creative_configuration"
  end

end
