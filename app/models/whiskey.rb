class Whiskey < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :score_types, through: :scores

  accepts_nested_attributes_for :scores

  validates :title, presence: true, length: { in: 1..250 }


  def self.search(query)
    where("TITLE LIKE ? OR DESCRIPTION LIKE ? ", "%#{query}%", "%#{query}%")
  end

  def self.search_by_rating(query)
    joins(:scores).where("scores.score_type_id = ? AND scores.score >= ?", query[:id], query[:score])
  end

end
