class Request < ApplicationRecord
  belongs_to :quiz
  belongs_to :client
  belongs_to :user
end
