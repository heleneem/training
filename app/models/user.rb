class User < ApplicationRecord
  validates :name, presence: true
  has_many :bookings, dependant: :destroy
end
