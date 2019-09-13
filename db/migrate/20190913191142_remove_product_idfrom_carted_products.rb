class RemoveProductIdfromCartedProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carted_products, :produdct_id, :integer
  end
end
