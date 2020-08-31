class Booking < ApplicationRecord
  belongs_to :request
  belongs_to :user
  belongs_to :client, class_name: 'User'


  validates :date, :price, :address, presence: true

  def self.sort_bookings
    Booking.order(:date)
  end

  def self.confirmed
    Booking.where(confirmed: true)
  end

  def self.unconfirmed
    Booking.where(confirmed: false)
  end

end
