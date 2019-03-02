# frozen_string_literal: true

class AddColumnToRoomUsage < ActiveRecord::Migration[5.2]
  def change
    add_reference :room_usages, :room, foreign_key: true, null: false
  end
end
