FactoryBot.define do
  factory :category do
    id                    {'1'}
    task                  {"プログラミング"}
    created_at            {'2020-12-15 08:05:04.282156'}
    updated_at            {'2020-12-15 08:05:04.282156'}
    # アソシエーション
    association :user
  end
end