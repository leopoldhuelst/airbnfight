class Arena < ApplicationRecord
  belongs_to :fighter, dependent: :destroy

  validates :address, presence: true
  validates :description, length: { minimum: 15 }
end
