class Request < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  has_many_attatched :photos
end
