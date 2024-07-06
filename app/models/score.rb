class Score < ApplicationRecord
  belongs_to :round
  has_many :score_details, dependent: :destroy
  accepts_nested_attributes_for :score_details, allow_destroy: true
end
