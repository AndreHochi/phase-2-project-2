class User < ApplicationRecord
    has_many :orders
    has_many :locations, through: :orders
    has_secure_password
    validates :username, uniqueness: true
    validates :balance, numericality: {greater_than_or_equal_to: 0}
    validates :reward_points, numericality: {greater_than_or_equal_to: 0}

    def paynow_balance(cost)
        self.balance - cost
    end

    def discount_balance(cost)
        self.balance - cost * 0.8
    end

    def paynow_reward(cost)
        self.reward_points + 5
    end

    def discount_reward(cost)
        self.reward_points - 20
    end
end
