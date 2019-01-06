class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.timestamps
      t.string  :name,               null: false, default: ""
      t.integer :year,               null: false, default: ""
      t.text    :description,                        default: ""
      t.text    :feature,                            default: ""
      t.string  :web_url
      t.integer :band_type,          null: false, default: 0
      t.boolean :registeration,      null:false,  default: false
    end
  end
end
