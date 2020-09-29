class TweetCategory 
  include ActiveModel::Model
  attr_accessor :hour_time, :text, :category_id, :user_id

  

  def save
    study_record = Study_record.create(hour_time: hour_time, category_id: category.id)
    Tweet.create(text: text, user_id: user_id)
  end
end
