class AddDefaultToLineItemsQuantity < ActiveRecord::Migration[5.1]
  def change
    change_column :line_items, :quantity, :integer,:default => 1
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
