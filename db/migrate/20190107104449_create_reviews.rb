class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true, null: false
      t.references :band, foreign_key: true, null: false
      t.references :event, foreign_key: true, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
