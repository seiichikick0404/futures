class UsersController < ApplicationController
  def show
    @user = current_user                      #ログイン中のユーザー情報の取得
    @tweets = current_user.tweets             #ログイン中のユーザーのツイートを取得
    @user_tweets = @tweets.sum(:hour_time)    #ログイン中ユーザーの総学習時間を取得
    @tweets_count = @tweets.count             #ログイン中ユーザーの総投稿数
  end
end
