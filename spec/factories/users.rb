FactoryBot.define do
  factory :user do
    id                    {'1'}
    nickname              {"test11"}
    email                 {"test@example123"}
    password              {"tester123"}
    password_confirmation {password}
  end
end