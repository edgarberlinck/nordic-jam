class RemoveAddressFromProfile < ActiveRecord::Migration[8.0]
  def change
    remove_column :profiles, :address, :string
  end
end
