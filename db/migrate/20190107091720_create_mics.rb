class CreateMics < ActiveRecord::Migration[5.2]
  def change
    create_table :mics do |t|
      t.date :date, null: false
      t.time :start_time
      t.time :end_time
      t.references :user, null: false
      t.references :band, null: false
      t.references :room, null: false
      t.references :period, null: false
      t.integer :order
      t.text :remark
      t.string :status
      t.string :pa_attendance
      t.timestamps
    end
  end
end
