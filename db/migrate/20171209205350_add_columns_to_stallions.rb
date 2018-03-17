class AddColumnsToStallions < ActiveRecord::Migration[5.1]
  def change
    add_column :stallions, :reg_number, :string
    add_column :stallions, :birth_date, :date
    add_column :stallions, :sex, :string
    add_column :stallions, :colour, :string
    add_column :stallions, :markings, :string
    add_column :stallions, :breeder, :string
    add_column :stallions, :description, :text
    add_column :stallions, :mother_name, :string
    add_column :stallions, :father_name, :string
    add_column :stallions, :father_image, :string
    add_column :stallions, :breeding_description, :text
  end
end
