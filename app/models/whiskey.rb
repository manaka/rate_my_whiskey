class Whiskey < ApplicationRecord
  has_many :scores
  has_many :score_types, through: :scores

  accepts_nested_attributes_for :scores


end
