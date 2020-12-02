class User < ApplicationRecord
#   アソシエーション
  has_many :tweets
  has_many :categories
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  with_options presence: true do
    validates :nickname, length: { maximum: 6 }
    validates :password, length: { minimum: 6 },
                        format: { with: /\A(?=.*?[a-z])[a-z\d]{6,32}+\z/ }
  end
end
