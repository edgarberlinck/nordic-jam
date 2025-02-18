class CreateInfluences < ActiveRecord::Migration[8.0]
  def change
    create_table :influences do |t|
      t.string :name

      t.timestamps
    end
  end
end
