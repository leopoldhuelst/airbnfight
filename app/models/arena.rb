class Arena < ApplicationRecord
  belongs_to :fighter
  has_many :fights, dependent: :destroy
  geocoded_by :address

  validates :address, presence: true
  # validates :description, length: { minimum: 15 }
  after_validation :geocode
end
