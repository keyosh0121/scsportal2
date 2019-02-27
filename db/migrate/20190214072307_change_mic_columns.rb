class ChangeMicColumns < ActiveRecord::Migration[5.2]
  def change
  	
  	remove_foreign_key :mics, :rooms
  	remove_reference :mics, :room, index: true
  	add_reference :mics, :room, foreign_key: true
    
  end
end
