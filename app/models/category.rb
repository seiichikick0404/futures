class Category < ApplicationRecord
  acts_as_paranoid
  # アソシエーション
  belongs_to :user
  has_many :tweets
  # バリデーション
  validates :task, presence: true
end
