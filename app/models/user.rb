class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :requests
  has_many_attached :photos

  def self.artist
    User.select { |u| u.artist }
  end

  def self.client
    User.select { |u| !u.artist }
  end
end
