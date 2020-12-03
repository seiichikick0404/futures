FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example123"}
    password              {"tester123"}
    password_confirmation {password}
  end
end