class Record < ApplicationRecord
  belongs_to :user

  validates :record_memo, presence: true
end
