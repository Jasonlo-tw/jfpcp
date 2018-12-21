class Collection < ApplicationRecord
    has_many :collection_links
    has_many :products, through: :collection_links
end
