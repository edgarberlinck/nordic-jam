class AddLocationToProfile < ActiveRecord::Migration[8.0]
  def change
    add_column :profiles, :address, :string
    add_column :profiles, :country, :string
    add_column :profiles, :city, :string
    add_column :profiles, :state, :string
    add_column :profiles, :zip, :string
  end
end
