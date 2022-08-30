class DogWalker < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :price, presence: true, numericality: { only_integer: true }
end
