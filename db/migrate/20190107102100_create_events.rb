class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.date :date
      t.time :start_time
      t.time :end_time
      t.boolean :entry_requirement, null: false, default: false
      t.string :place
      t.time :entry_start
      t.time :entry_end
      t.references :host, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
