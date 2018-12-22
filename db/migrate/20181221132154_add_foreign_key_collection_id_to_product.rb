class AddForeignKeyCollectionIdToProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :collection_name

    add_foreign_key :products, :collection, name: :collection_name
  end
end
