class ChangeTypeForNames < ActiveRecord::Migration[5.1]
  def change
    change_column :collection_links, :collection_name, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
    change_column :collection_links, :product_name, :string
  end
end
