class Fight < ApplicationRecord
  belongs_to :fighter
  belongs_to :arena

  validates :date, presence: true
  validates :title, presence: true
end
