class Round < ApplicationRecord
  belongs_to :user
  has_one :score
end
