class CreateDailySyncQueues < ActiveRecord::Migration[8.0]
  def change
    create_table :daily_sync_queues do |t|
      t.datetime :utc_date, null: false
      t.references :queueable, polymorphic: true, index: {unique: true}, null: false

      t.timestamps
    end
  end
end
