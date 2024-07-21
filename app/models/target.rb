class Target < ApplicationRecord
  belongs_to :user

  validates :target_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 30, less_than_or_equal_to: 300,
  message: 'must be a half-width number and between 30 and 300' }
  validates :deadline, presence: true
  validate :deadline_is_future_date

  private

  def deadline_is_future_date
    if deadline.present? && deadline <= Date.today
      errors.add(:deadline, "must be a future date")
    end
  end
end
