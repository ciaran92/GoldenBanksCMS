class AddForSaleToStallions < ActiveRecord::Migration[5.1]
  def change
    add_column :stallions, :for_sale, :boolean
  end
end
