# frozen_string_literal: true

class CreateEventEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :event_entries do |t|
      t.references :user, foreign_key: true, null: false
      t.references :band, foreign_key: true, null: false
      t.references :event, foreign_key: true, null: false
      t.timestamps
    end
  end
end
