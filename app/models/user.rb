class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_one :quiz
  has_many :requests
  has_many :bookings
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  extend FriendlyId
  friendly_id :instagram, use: :slugged

  def self.artist
    User.where(artist: true)
  end

  def self.client
    User.where(artist: false)
  end
end


