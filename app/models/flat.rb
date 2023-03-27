class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :address, presence: true
  validates :name, presence: true
  validates :text, presence: true
  validates :price, presence: true

end
