class Category < ApplicationRecord
  # アソシエーション
  belongs_to :user
  has_many :tweets
  has_one :study_record, dependent: :destroy
  # バリデーション
  validates :task, presence: true
end
