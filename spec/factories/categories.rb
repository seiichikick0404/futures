FactoryBot.define do
  factory :category do
    id                    {'1'}
    task                  {"ruby"}
    # アソシエーション
    association :user
  end
end