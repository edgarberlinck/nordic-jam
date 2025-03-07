class RemoveInstrumentsAndStylesFromProfileCreatedJams < ActiveRecord::Migration[8.0]
  def change
    remove_column :profile_created_jams, :styles, :jsonb
    remove_column :profile_created_jams, :instruments, :jsonb
    remove_column :profile_created_jams, :styles_id, :bigint
    remove_column :profile_created_jams, :instruments_id, :bigint
  end
end
