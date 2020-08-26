class Review < ApplicationRecord
  belongs_to :request
    validates :rating, inclusion: 1..5
    validates :rating, presence: true
end
