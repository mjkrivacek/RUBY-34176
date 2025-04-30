class CreateHistories < ActiveRecord::Migration[8.0]
  def change
    create_table :histories do |t|
      t.references :entity, null: false, foreign_key: true
      t.references :recallable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
