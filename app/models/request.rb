class Request < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  validates :user, presence: true
end
