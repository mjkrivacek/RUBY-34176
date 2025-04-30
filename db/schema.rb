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

ActiveRecord::Schema[8.0].define(version: 20_250_328_160_423) do
  create_table 'crucible_users', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'preferredName', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'daily_sync_queues', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.datetime 'utc_date', null: false
    t.bigint 'daily_sync_result_id'
    t.string 'queueable_type', null: false
    t.bigint 'queueable_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['daily_sync_result_id'], name: 'index_daily_sync_queues_on_daily_sync_result_id'
    t.index %w[queueable_type queueable_id], name: 'index_daily_sync_queues_on_queueable', unique: true
  end

  create_table 'entities', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.binary 'uuid', limit: 16, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['uuid'], name: 'index_entities_on_uuid', unique: true
  end

  create_table 'histories', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.bigint 'entity_id', null: false
    t.string 'recallable_type', null: false
    t.bigint 'recallable_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['entity_id'], name: 'index_histories_on_entity_id'
    t.index %w[recallable_type recallable_id], name: 'index_histories_on_recallable'
  end

  create_table 'horde_users', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'displayname', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'human_assets', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'preferred_name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'resources', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.bigint 'entity_id', null: false
    t.string 'assignable_type', null: false
    t.bigint 'assignable_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[assignable_type assignable_id], name: 'index_resources_on_assignable', unique: true
    t.index ['entity_id'], name: 'index_resources_on_entity_id'
  end

  create_table 'synthetic_assets', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'preferred_name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['preferred_name'], name: 'index_synthetic_assets_on_preferred_name', unique: true
  end

  add_foreign_key 'histories', 'entities'
  add_foreign_key 'resources', 'entities'
end
