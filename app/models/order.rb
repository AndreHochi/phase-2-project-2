class Order < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :itemorderjoiners
    has_many :items, through: :itemorderjoiners
end
