# frozen_string_literal: true

class CreateHumanAssets < ActiveRecord::Migration[8.0]
  def change
    create_table :human_assets do |t|
      t.string :preferred_name, null: false

      t.timestamps
    end
  end
end
