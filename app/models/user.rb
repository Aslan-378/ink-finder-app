class User < ApplicationRecord
  extend Enumerize
  extend FriendlyId

  BODY_PARTS = ['Arm', 'Leg', 'Chest', 'Back', 'Head', 'Thigh', 'Calf', 'Hand', 'Ribs', 'Neck', 'Shoulder', 'Upper Torso', 'Lower Torso']
  
  SIZES = (0..30).to_a.map(&:to_s)
 
  STYLES = ["Blackwork", "American Traditional", "Surrealism", "Traditional Japanese", "Blackwork Japanese", "Realism", "illustration", "Tribal"]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :quizzes
  has_many :requests
  has_many :bookings
  has_many :made_requests, foreign_key: 'client_id', class_name: 'Request'
  has_many :my_bookings, foreign_key: 'client_id', class_name: 'Booking'
  # has_many :reviews, dependent: :destroy
  has_many_attached :photos
  has_one_attached :avatar
  #validates :first_name, :last_name, :bio, :experience, :inspiration, :hobbies, :instagram, :address, :phone_number, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  
  friendly_id :instagram, use: :slugged
  def should_generate_new_friendly_id?
    instagram_changed? || super
  end

  enumerize :style, in: STYLES

  enumerize :body_part, in: BODY_PARTS

  enumerize :size, in: SIZES


  def self.artist
    User.where(artist: true)
  end

  def self.client
    User.where(artist: false)
  end

end
