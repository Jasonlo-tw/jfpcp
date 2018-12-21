class RemoveCollectionIdFromProductsAndAddCollectionName < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :collection_id
    add_column :products, :collection_name, :string
  end
end
