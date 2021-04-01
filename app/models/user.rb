class User < ApplicationRecord
    has_many :orders
    has_many :locations, through: :orders
    has_secure_password
    validates :username, uniqueness: true
    validates :balance, numericality: {greater_than_or_equal_to: 0}
    validates :reward_points, numericality: {greater_than_or_equal_to: 0}

    def plus_ten
        self.update({balance: self.balance + 10})
    end

    def plus_five
        self.update({balance: self.balance + 5})
    end

    def plus_one
        self.update({balance: self.balance + 1})
    end

    def plus_twenty
        self.update({balance: self.balance + 20})
    end

    def paynow_balance(cost)
        self.balance - cost
    end

    def discount_balance(cost)
        self.balance - cost * 0.8
    end

    def paynow_reward
        self.reward_points + 5
    end

    def discount_reward
        self.reward_points - 20
    end
end
