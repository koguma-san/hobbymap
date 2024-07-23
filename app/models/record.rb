class Record < ApplicationRecord
  belongs_to :user

  validates :record_date, presence: true
  validates :title, presence: true
  validates :record_memo, presence: true
end
