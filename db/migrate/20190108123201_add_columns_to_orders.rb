class AddColumnsToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :total, :decimal
    add_column :orders, :shipping_fee, :decimal
    add_column :orders, :comments, :text
    add_column :orders, :process, :string
    add_column :orders, :return, :string
  end
end
