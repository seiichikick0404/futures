class UsersController < ApplicationController
  before_action :move_to_sign_in, only: [:show]


  def show
    @user = current_user                      #ログイン中のユーザー情報の取得
    @tweets = current_user.tweets             #ログイン中のユーザーのツイートを取得
    @user_tweets = @tweets.sum(:hour_time)    #ログイン中ユーザーの総学習時間を取得
    @tweets_count = @tweets.count             #ログイン中ユーザーの総投稿数
    @chart = { "2020-01-01" => 100, "2020-01-02" => 80, "2020-01-03" => 110, "2020-01-04" => 130, "2020-01-05" => 90 }

  end

  def move_to_sign_in
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
  end
end
