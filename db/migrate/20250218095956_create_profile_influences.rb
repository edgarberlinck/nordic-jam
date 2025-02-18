class CreateProfileInfluences < ActiveRecord::Migration[8.0]
  def change
    create_table :profile_influences do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :influence, null: false, foreign_key: true

      t.timestamps
    end
  end
end
