class Item < ApplicationRecord
    has_many :itemorderjoiners
    has_many :orders, through: :itemorderjoiners
end
