class ScoreType < ApplicationRecord
  has_many :scores, dependent: :destroy
  validates :name, presence: true, length: { in: 1..250 }

end
