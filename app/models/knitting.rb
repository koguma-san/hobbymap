class Knitting < ApplicationRecord
  validates :work, presence: true
  validates :recipe, presence: true
  validates :yarn, presence: true
  validates :hook_number, presence: true
end
