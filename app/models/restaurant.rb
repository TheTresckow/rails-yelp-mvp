class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, :address, :category, presence: { message: 'must be given please' }
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'], message: 'is not a valid category'}
end
