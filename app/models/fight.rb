class Fight < ApplicationRecord
  belongs_to :fighter, dependent: :destroy
  belongs_to :arena, dependent: :destroy

  validates :date, presence: true
end
