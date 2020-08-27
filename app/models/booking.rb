class Booking < ApplicationRecord
  belongs_to :request
  belongs_to :user
  belongs_to :client, class_name: 'User'


  validates :date, :price, :address, presence: true

end
