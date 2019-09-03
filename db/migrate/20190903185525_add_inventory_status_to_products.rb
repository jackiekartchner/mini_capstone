class AddInventoryStatusToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :inventory_status, :string 
  end
end
