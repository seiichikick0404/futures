class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :password, length: { minimum: 6 },
                       format: { with: /\A(?=.*?[a-z])[a-z\d]{6,32}+\z/ }
end
