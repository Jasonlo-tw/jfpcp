class RenameColumnForCollectionLinks < ActiveRecord::Migration[5.1]
  def change
    rename_column :collection_links, :collection_id, :collection_name
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    rename_column :collection_links, :product_id, :product_name
  end
end
