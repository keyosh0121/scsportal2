class ChangeBandColumns < ActiveRecord::Migration[5.2]
  def change
    add_reference :bands, :master, foreign_key: { to_table: :users }, null: false
    add_reference :bands, :pa, foreign_key: { to_table: :users }, null: false
    remove_column :bands, :feature, :text
  end
end
