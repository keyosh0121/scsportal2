class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.string :name, null: false, default: ""
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.timestamps
    end
  end
end
