class Item < ApplicationRecord
    belongs_to :seller
    has_one :buyer

    validates :title, presence: true
    validates :description, presence: true, length: {in: 10..500}
end