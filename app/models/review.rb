class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: { message: 'must be given please' }
  validates :rating, format: { with: /\A[0-5]\d*\z/, message: 'please enter rating between 0 and 5' }
  validates :rating, numericality: { only_integer: true }
end
