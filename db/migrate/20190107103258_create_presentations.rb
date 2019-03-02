# frozen_string_literal: true

class CreatePresentations < ActiveRecord::Migration[5.2]
  def change
    create_table :presentations do |t|
      t.string :name, null: false
      t.references :event, foreign_key: true, null: false
      t.references :host, foreign_key: { to_table: :users }
      t.time :length
      t.timestamps
    end
  end
end
