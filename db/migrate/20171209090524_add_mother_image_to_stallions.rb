class AddMotherImageToStallions < ActiveRecord::Migration[5.1]
  def change
    add_column :stallions, :mother_image, :string
  end
end
