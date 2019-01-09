class CreatePresentationHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :presentation_hosts do |t|
      t.references :user, foreign_key: true, null: false
      t.references :presentation, foreign_key: true, null: false
      t.timestamps
    end
  end
end
