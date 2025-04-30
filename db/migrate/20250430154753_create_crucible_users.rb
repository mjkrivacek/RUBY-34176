class CreateCrucibleUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :crucible_users do |t|
      t.string :preferredName, null: false

      t.timestamps
    end
  end
end
