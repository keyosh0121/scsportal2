class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :name
      t.string :url
      t.references :presentation, foreign_key: true, null: false
      t.timestamps
    end
  end
end
