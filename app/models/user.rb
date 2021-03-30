class User < ApplicationRecord
    has_many :orders
    has_many :locations, through: :orders
end
