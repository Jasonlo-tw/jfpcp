class AddCollectionNameToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :collection_name, :string
  end
end
