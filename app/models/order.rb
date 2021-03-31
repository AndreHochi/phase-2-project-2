class Order < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :itemorderjoiners
    has_many :items, through: :itemorderjoiners

    def total_cost
        array = []
        self.items.each do |item|
            array << item.price
        end 
        array.sum
    end

    #generate item(item)
end
