# frozen_string_literal: true

class ChangeBandColumnsToAllowNull < ActiveRecord::Migration[5.2]
  def change
    change_column :bands, :band_year, :integer, null: true
  end
end
