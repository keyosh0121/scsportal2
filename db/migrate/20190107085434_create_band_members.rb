# frozen_string_literal: true

class CreateBandMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :band_members do |t|
      t.references :user, foreign_key: true, null: false
      t.references :band, foreign_key: true, null: false
      t.integer :mic_number, null: false
      t.timestamps
    end
  end
end
