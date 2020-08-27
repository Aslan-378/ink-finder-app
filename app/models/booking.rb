class Booking < ApplicationRecord
  belongs_to :request
  belongs_to :user


  validates :date, :price, :location, presence: true

end
