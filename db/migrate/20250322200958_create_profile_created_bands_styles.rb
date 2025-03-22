class CreateProfileCreatedBandsStyles < ActiveRecord::Migration[8.0]
  def change
    create_table :profile_created_bands_styles do |t|
      t.references :profileCreatedBand, null: false, foreign_key: true
      t.references :style, null: false, foreign_key: true

      t.timestamps
    end
  end
end
