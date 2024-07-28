class Book < ApplicationRecord
  validates :book_title, presence: true
  validates :author, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :registration_date, presence: true
end
