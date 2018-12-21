class RemoveCollectionLinksTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :collection_links
  end
end
