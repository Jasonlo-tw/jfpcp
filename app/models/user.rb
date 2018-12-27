class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # This line may cause user validation.
    # As non-users are allowed to checkout, what about skipping this relationship?
  # has_one :cart

  has_many :orders
end
