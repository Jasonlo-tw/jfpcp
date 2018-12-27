class AddNotesToCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :notes, :text
  end
end
