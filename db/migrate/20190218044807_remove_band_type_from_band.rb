# frozen_string_literal: true

class RemoveBandTypeFromBand < ActiveRecord::Migration[5.2]
  def change
    remove_column :bands, :band_type, :integer
  end
end
