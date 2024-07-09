class Round < ApplicationRecord
  belongs_to :user
  has_one :score, dependent: :destroy
  has_many :score_details, through: :score

  accepts_nested_attributes_for :score

  before_save :calculate_totals

  def total_strokes
    score.score_details.sum(:strokes)
  end

  def total_putts
    score.score_details.sum(:putts)
  end
end
