class AddSizeHanddropToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :size_hand_drop, :integer
  end
end
