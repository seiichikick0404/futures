class Tweet < ApplicationRecord
  has_many :categories, through: :tweet_categories
  has_many :tweet_categories
  belongs_to :user
end
