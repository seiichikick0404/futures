class Tweet < ApplicationRecord
  # アソシエーション
  belongs_to :user
  belongs_to :category, -> { with_deleted }
  # バリデーション
  with_options presence: true do
    validates :text
    validates :hour_time,
              format: { with: /\A[0-9]+(\.[0-9]+)?\z/}
    validates :category_id
  end
    # 一つ目の選択「--」の時は保存できないようにする
    # validates :category_id, numericality: { other_than: 1 } 
end
