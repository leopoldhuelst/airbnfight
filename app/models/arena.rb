class Arena < ApplicationRecord
  belongs_to :fighter

  validates :address, presence: true
  validates :description, length: { minimum: 15 }
end
