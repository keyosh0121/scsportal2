class AddTypeToBand < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :type, :string
  end
end
