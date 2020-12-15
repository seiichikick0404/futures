FactoryBot.define do
  factory :tweet do
    id                    {'1'}
    hour_time             {'3'}
    text                  {"今日はたくさん勉強しました"}
    association :user
    association :category
  end
end