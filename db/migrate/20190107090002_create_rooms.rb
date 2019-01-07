class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name, null: false, default: ""
      t.integer :room_type, null: false, default: 0
      t.timestamps
    end
  end
end
