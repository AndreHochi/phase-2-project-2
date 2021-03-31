class User < ApplicationRecord
    has_many :orders
    has_many :locations, through: :orders
    has_secure_password
    validates :username, uniqueness: true
    validates :balance, numericality: {greater_than_or_equal_to: 0}
    validates :balance, reward_points: {greater_than_or_equal_to: 0}
end
