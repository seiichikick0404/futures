FactoryBot.define do
  factory :tweet do
    hour_time             {'3'}
    text                  {"今日はたくさん勉強しました"}
    category_id           {'1'}
    association :user
    association :category
  end
end