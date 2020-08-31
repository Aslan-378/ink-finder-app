class Quiz < ApplicationRecord
#validates :style, :meaning, :category, :representation
  belongs_to :user, optional: true
  
  validates :style, :meaning, :category, :representation, presence: true

end
