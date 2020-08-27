class Booking < ApplicationRecord
  belongs_to :request
  belongs_to :user, through: :request


  validates :date, :price, :location, presence: true

end
