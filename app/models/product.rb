class Product < ApplicationRecord
    belongs_to :collections, foreign_key: :collection_name

    
end
