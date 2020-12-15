require 'rails_helper'

RSpec.describe 'ツイート投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @category = FactoryBot.build(:category)
    @tweet = FactoryBot.build(:tweet)
  end
  context 'ツイート投稿ができるとき'do
    it 'ログインしたユーザーは新規投稿できる' do
      # ログインする
      visit new_user_session_path
      fill_in 'Email', with: @user.email
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # タスクを追加する
      fill_in 'category[task]', with: @category.task
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # 投稿ページに移動する
      visit new_tweet_path
      # フォームに情報を入力する
      select 'プログラミング', from: 'tweet[category_id]'
      fill_in 'tweet[hour_time]', with: @tweet.hour_time
      fill_in 'tweet[text]', with: @tweet.text
      # 送信するとTweetモデルのカウントが1上がることを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Tweet.count }.by(1)
      # トップページに遷移する
      expect(current_path).to eq root_path
    end
  end
  context 'ツイート投稿ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      visit root_path
      # 新規投稿ページへのリンクがない
      expect(current_path).to eq new_user_session_path
    end
  end
end