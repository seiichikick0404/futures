class Category < ApplicationRecord
  # アソシエーション
  belongs_to :user
  has_many :tweets, through: :tweet_categories
  has_many :tweet_categories
  # バリデーション
  validates :task, presence: true
end
