class Category < ApplicationRecord
  # アソシエーション
  belongs_to :user

  # バリデーション
  varidates :task, presence: true
end
