class RemoveCollectionNameFromProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :collection_name
  end
end
