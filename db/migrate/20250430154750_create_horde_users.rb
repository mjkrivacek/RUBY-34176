class CreateHordeUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :horde_users do |t|
      t.string :displayname, null: false

      t.timestamps
    end
  end
end
