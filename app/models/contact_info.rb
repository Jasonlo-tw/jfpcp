class ContactInfo < ApplicationRecord
    validates :email, :first_name, :last_name, :address, :city, :country, :province, :post_code, :phone, presence: true

    belongs_to :cart
    belongs_to :order
end
