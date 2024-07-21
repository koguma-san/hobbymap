FactoryBot.define do
  factory :target do
    target_score {Faker::Number.between(from: 31, to: 299) }
    deadline {Faker::Date.forward}
    association :user
  end
end
