class CollectionLink < ApplicationRecord
  belongs_to :collection
  belongs_to :product
end