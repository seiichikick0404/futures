class Category < ApplicationRecord
  # アソシエーション
  belongs_to :user

  # バリデーション
  validates :task, presence: true
end
