class Quiz < ApplicationRecord
    belongs_to :user, optional: true
    validates :style, :meaning, :category, :representation, presence: true
end
