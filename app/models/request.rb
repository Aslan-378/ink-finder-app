class Request < ApplicationRecord
  belongs_to :quiz, optional: true
  belongs_to :user
  belongs_to :client, class_name: 'User'
  has_one :booking, dependent: :destroy
  validates :user, :style, :name, :address, :body_part, :size, :style, :description, presence: true
  has_many_attached :photos

  def self.earliest_date
    start_at_values = Request.pluck(:created_at)
    earliest_date = start_at_values.min
  end
end
