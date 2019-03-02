# frozen_string_literal: true

class CreateRoomUsages < ActiveRecord::Migration[5.2]
  def change
    create_table :room_usages do |t|
      t.references :user, foreign_key: true, null: false
      t.references :band, foreign_key: true
      t.references :section, foreign_key: true
      t.references :period, foreign_key: true, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
