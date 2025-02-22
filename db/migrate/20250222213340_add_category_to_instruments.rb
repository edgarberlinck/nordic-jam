class AddCategoryToInstruments < ActiveRecord::Migration[8.0]
  def change
    add_column :instruments, :category, :string
  end
end
