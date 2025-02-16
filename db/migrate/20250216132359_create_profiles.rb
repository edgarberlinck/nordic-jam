class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.text :bio
      t.string :date_of_birth

      t.timestamps
    end
  end
end
