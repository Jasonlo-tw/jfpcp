class AddPictureToCollection < ActiveRecord::Migration[5.1]
  def change
    add_column :collections, :picture, :string
  end
end
