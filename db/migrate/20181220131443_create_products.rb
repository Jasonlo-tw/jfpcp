class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description_short
      t.text :description_long

      t.timestamps
    end
  end
end
