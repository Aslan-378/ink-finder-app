class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :requests
  has_many :bookings
  has_many_attached :photos

  extend FriendlyId
  friendly_id :instagram, use: :slugged

  def self.artist
    User.select { |u| u.artist }
  end

  def self.client
    User.select { |u| !u.artist }
  end
end
