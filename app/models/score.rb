class Score < ApplicationRecord
  belongs_to :whiskey
  belongs_to :score_type

  validates :score, presence: true
  validates :score, inclusion: { in: [0, 1, 2, 3, 4, 5] }

end
