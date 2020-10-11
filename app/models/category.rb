class Category < ApplicationRecord
  acts_as_paranoid
  # アソシエーション
  belongs_to :user
  has_many :tweets
  # バリデーション
  with_options presence: true do
    validates :task,
              length: { maximum: 10 } 
  end
   
  
end
