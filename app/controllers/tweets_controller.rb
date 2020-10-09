class TweetsController < ApplicationController
  before_action :move_to_sign_in, except: [:index]

  def index
    @study_user = Tweet.where(user_id: current_user.id)  # ログイン中のユーザーの取得
    @study_hour = @study_user.sum(:hour_time)            # ログイン中のユーザーの総学習時間を取得
    @user_runking = User.joins(:tweets).select('users.*, tweets.text').group("id").order("count(tweets.user_id) DESC").limit(5)
    @tweets = Tweet.includes(:user).order("created_at DESC")                                  # ツイートの取得
    if user_signed_in?
      @categories = current_user.categories.all
    end
    @category = Category.new
  end

  def new
    @tweet_category = Tweet.new
    @categories = current_user.categories.all
  end

  def create
    @tweet_category = Tweet.new(tweet_category_params)
      if @tweet_category.save
        redirect_to  controller: :tweets, action: :index
      else 
        render action: :new
      end
  end

  def move_to_sign_in
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
  end
  private
  def tweet_category_params
    params.require(:tweet).permit(:text, :hour_time, :category_id).merge(user_id: current_user.id)
  end
  
end
