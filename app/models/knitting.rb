class Knitting < ApplicationRecord
  has_one_attached :image

  validates :work, presence: true
end
