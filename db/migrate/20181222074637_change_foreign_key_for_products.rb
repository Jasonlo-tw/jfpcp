class ChangeForeignKeyForProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :collection_name
    add_foreign_key :products, :collections
  end
end
