class CreateEntities < ActiveRecord::Migration[8.0]
  def change
    create_table :entities do |t|
      t.binary :uuid, limit: 16, null: false

      t.timestamps
    end
    add_index :entities, :uuid, unique: true
  end
end
