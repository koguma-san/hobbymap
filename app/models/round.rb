class Round < ApplicationRecord
  belongs_to :user
  has_one :score, dependent: :destroy
  has_many :score_details, through: :score

  accepts_nested_attributes_for :score, allow_destroy: true
end
