class RemoveStateAndZipFromProfile < ActiveRecord::Migration[8.0]
  def change
    remove_column :profiles, :state, :string
    remove_column :profiles, :zip, :string
  end
end
