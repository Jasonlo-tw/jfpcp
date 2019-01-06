class AddForeignKeysToContactInfo < ActiveRecord::Migration[5.1]
  def change
    add_reference :contact_infos, :order, index:true
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_reference :contact_infos, :cart, index:true
  end
end
