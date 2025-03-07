class AddTitleToProfileCreatedJams < ActiveRecord::Migration[8.0]
  def change
    add_column :profile_created_jams, :title, :string
  end
end
