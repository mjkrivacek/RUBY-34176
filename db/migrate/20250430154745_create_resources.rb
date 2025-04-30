class CreateResources < ActiveRecord::Migration[8.0]
  def change
    create_table :resources do |t|
      t.references :entity, null: false, foreign_key: true
      t.references :assignable, polymorphic: true, index: {unique: true}, null: false

      t.timestamps
    end
  end
end
