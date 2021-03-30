class User < ApplicationRecord
    has_many :orders
    has_many :locations, through: :orders
    has_secure_password
    validates :username, uniqueness: true
    
end
