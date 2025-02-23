class CreateProfileConnections < ActiveRecord::Migration[8.0]
  def change
    create_table :profile_connections do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :profiles, null: false, foreign_key: true
      t.boolean :accepted

      t.timestamps
    end
  end
end
