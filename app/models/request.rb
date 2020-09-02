class Request < ApplicationRecord
  extend Enumerize

  belongs_to :quiz, optional: true
  belongs_to :user
  belongs_to :client, class_name: 'User'
  has_one :chatroom, dependent: :destroy
  has_one :booking, dependent: :destroy
  validates :name, :body_part, :size, :description, presence: true
  validates :description, length: { maximum: 300, tokenizer: lambda { |str| str.scan(/\w+/) } }
  has_many_attached :photos

  enumerize :style, in: User::STYLES

  enumerize :body_part, in: User::BODY_PARTS

  enumerize :size, in: User::SIZES


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
