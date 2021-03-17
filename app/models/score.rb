class Score < ApplicationRecord
  belongs_to :whiskey
  belongs_to :score_type
end
