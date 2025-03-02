class CreateProfileCreatedJams < ActiveRecord::Migration[8.0]
  def change
    create_table :profile_created_jams do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :description
      t.string :address
      t.string :country
      t.string :city
      t.references :styles, null: false, foreign_key: true
      t.references :instruments, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
