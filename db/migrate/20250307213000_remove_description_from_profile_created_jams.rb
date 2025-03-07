class RemoveDescriptionFromProfileCreatedJams < ActiveRecord::Migration[8.0]
  def change
    remove_column :profile_created_jams, :description, :string
  end
end
