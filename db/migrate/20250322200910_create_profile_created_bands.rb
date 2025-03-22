class CreateProfileCreatedBands < ActiveRecord::Migration[8.0]
  def change
    create_table :profile_created_bands do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end