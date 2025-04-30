# frozen_string_literal: true

class CreateSyntheticAssets < ActiveRecord::Migration[8.0]
  def change
    create_table :synthetic_assets do |t|
      t.string :preferred_name, null: false

      t.timestamps
    end
    add_index :synthetic_assets, :preferred_name, unique: true
  end
end
