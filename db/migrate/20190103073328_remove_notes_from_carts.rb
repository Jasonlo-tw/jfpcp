class RemoveNotesFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :notes
  end
end
