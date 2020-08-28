class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :requests
  has_many :bookings
  # has_many :reviews, dependent: :destroy
  has_many_attached :photos
  has_one_attached :avatar
  #validates :first_name, :last_name, :bio, :experience, :inspiration, :hobbies, :instagram, :address, :phone_number, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  extend FriendlyId
  friendly_id :instagram, use: :slugged
  def should_generate_new_friendly_id?
    instagram_changed? || super
  end

  def self.artist
    User.where(artist: true)
  end

  def self.client
    User.where(artist: false)
  end
end
