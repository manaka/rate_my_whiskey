class ScoreType < ApplicationRecord
  has_many :scores

  validates :title, presence: true, length: { in: 1..250 }

end
