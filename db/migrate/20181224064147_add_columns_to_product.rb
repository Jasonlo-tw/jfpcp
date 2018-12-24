class AddColumnsToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :size_contracted, :string
    add_column :products, :size_extended, :string
    add_column :products, :size_strap, :string
    add_column :products, :detail_style, :string
    add_column :products, :detail_material, :string
    add_column :products, :string, :string
    add_column :products, :detail_cleaning, :string
    add_column :products, :detail_capacity, :string
  end
end
