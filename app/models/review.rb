class Review < ApplicationRecord
    validates :rating, inclusion: 1..5
    validates :rating, presence: true
end
