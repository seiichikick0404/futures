FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example123"}
    password              {"test123"}
    password_confirmation {password}
  end
end