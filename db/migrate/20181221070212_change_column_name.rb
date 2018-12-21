class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :collections, :name, :collection_name
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end

  rename_column :products, :name, :product_name
  #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
end
