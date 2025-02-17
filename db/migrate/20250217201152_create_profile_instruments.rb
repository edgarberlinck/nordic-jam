class CreateProfileInstruments < ActiveRecord::Migration[8.0]
  def change
    create_table :profile_instruments do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :instrument, null: false, foreign_key: true

      t.timestamps
    end
  end
end
