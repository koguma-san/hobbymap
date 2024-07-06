class ScoreDetail < ApplicationRecord
  belongs_to :score

  validates :hole_number, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 19 }
  validates :strokes, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :putts, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
