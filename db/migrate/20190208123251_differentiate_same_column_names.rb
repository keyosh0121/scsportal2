# frozen_string_literal: true

class DifferentiateSameColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :name, :user_name
    rename_column :users, :year, :user_year
    rename_column :bands, :name, :band_name
    rename_column :bands, :year, :band_year
  end
end
