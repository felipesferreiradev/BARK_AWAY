class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, :dog_breed, :city, :full_name, presence: true
  has_many :bookings
  has_many :dog_walkers
  has_one_attached :photo
end
