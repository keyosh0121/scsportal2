class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :name, null: false
      t.references :authority, foreign_key:true
      t.references :leader, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
