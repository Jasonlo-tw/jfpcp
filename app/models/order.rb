class Order < ApplicationRecord
    # belongs_to :cart
    # belongs_to :user
    has_many :line_items
    has_one :contact_info
end
