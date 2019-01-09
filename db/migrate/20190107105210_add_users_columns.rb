class AddUsersColumns < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :section, foreign_key: true, null: false
    add_reference :users, :authority, foreign_key: true, null: false
  end
end
