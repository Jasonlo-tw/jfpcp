class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :string
      t.decimal :price
      t.string :collection
      t.string :tag
      t.text :description_short
      t.text :description_long

      t.timestamps
    end
  end
end
