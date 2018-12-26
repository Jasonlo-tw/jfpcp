class Product < ApplicationRecord
    belongs_to :collection
    has_many :line_items
    

    
end
