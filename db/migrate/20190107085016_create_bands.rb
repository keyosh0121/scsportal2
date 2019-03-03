# frozen_string_literal: true

class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.timestamps
      t.string  :name,               null: false
      t.integer :year,               null: false
      t.text    :description
      t.text    :feature
      t.string  :web_url
      t.integer :band_type,          null: false
      t.boolean :registeration,      null: false
    end
  end
end
