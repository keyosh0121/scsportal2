class ChangeBandUserColunmNameYearBack < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :user_name, :name
    rename_column :users, :user_year, :year
    rename_column :bands, :band_name, :name
    rename_column :bands, :band_year, :year
  end
end
