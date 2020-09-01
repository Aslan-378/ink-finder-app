class Request < ApplicationRecord
  extend Enumerize
  belongs_to :quiz, optional: true
  belongs_to :user
  belongs_to :client, class_name: 'User'
  has_one :booking, dependent: :destroy
  validates :user, :name, :body_part, :size, :description, presence: true
  has_many_attached :photos

  enumerize :style, in: ["Blackwork", "American Traditional", "Surrealism", "Traditional Japanese", "Blackwork Japanese", "Realism"]

  enumerize :body_part, in: ['Arm', 'Leg', 'Chest', 'Back', 'Head', 'Thigh', 'Calf', 'Hand', 'Ribs', 'Neck', 'Shoulder', 'Upper Torso', 'Lower Torso']

  enumerize :size, in: (0..10).to_a.map(&:to_s)


  def self.earliest_date
    start_at_values = Request.pluck(:created_at)
    earliest_date = start_at_values.min
  end

  def self.accepted
    Request.where(accepted: true)
  end

  def self.pending
    Request.where(accepted: false)
  end
end
