class TweetCategory 
  include ActiveModel::Model
  attr_accessor :hour_time, :text, :category_id, :user_id

  

  def save
    # 学習記録を保存
    study_record = StudyRecord.create(hour_time: hour_time, category_id: category_id)
    # ツイートを保存
    Tweet.create(text: text, user_id: user_id, category_id: category_id)
  end
end
