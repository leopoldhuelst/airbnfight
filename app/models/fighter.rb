class Fighter < ApplicationRecord
  has_many :arenas, dependent: :destroy
  has_many :fights, dependent: :destroy

  # validates :nickname, presence: true, uniqueness: true
  # validates :height, presence: true
  # validates :weight, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
