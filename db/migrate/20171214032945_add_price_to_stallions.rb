class AddPriceToStallions < ActiveRecord::Migration[5.1]
  def change
    add_column :stallions, :price, :decimal
  end
end
