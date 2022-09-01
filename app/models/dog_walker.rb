class DogWalker < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  belongs_to :user
  validates :price, presence: true, numericality: { only_integer: true }
end
