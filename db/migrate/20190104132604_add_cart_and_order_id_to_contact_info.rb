class AddCartAndOrderIdToContactInfo < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :contact_infos, :carts
    add_foreign_key :contact_infos, :orders
  end
end
