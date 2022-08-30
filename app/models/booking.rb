class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog_walker
  validates :date, presence: true
end
