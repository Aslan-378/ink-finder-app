class Request < ApplicationRecord
  belongs_to :quiz, optional: true
  belongs_to :user
  belongs_to :client, class_name: 'User'

  validates :user, :style, :name, :location, :body_part, :size, :style, :description, presence: true
  has_many_attached :photos
end
