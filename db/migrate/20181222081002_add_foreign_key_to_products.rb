class AddForeignKeyToProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :collection_name
    add_column :products, :collection_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_index :products, :collection_id
  end
end
