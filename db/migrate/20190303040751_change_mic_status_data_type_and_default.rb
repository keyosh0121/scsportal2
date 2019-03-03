class ChangeMicStatusDataTypeAndDefault < ActiveRecord::Migration[5.2]
  def change
  	remove_column :mics, :status
  	add_column :mics, :status, :integer, default: 0
  end
end
