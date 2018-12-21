class RemoveCollectionFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :collection
  end
end
