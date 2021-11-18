class Arena < ApplicationRecord
  belongs_to :fighter
  has_many :fights, dependent: :destroy

  validates :address, presence: true
  validates :description, length: { minimum: 15 }
end
