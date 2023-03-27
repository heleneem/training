class User < ApplicationRecord
  validates :name, presence: true
  has_many :bookings, dependent: :destroy
end
