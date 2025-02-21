class AddGenderToProfile < ActiveRecord::Migration[8.0]
  def change
    add_column :profiles, :gender, :string
  end
end
