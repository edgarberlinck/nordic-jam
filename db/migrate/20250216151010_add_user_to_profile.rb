class AddUserToProfile < ActiveRecord::Migration[8.0]
  def change
    add_reference :profiles, :user, null: true, foreign_key: true
  end
end
