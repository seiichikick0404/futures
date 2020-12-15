require 'rails_helper'

RSpec.describe 'タスク投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @category = FactoryBot.build(:category)
  end
  context 'タスク投稿ができるとき'do
    it 'ログインしたユーザーはタスク投稿できる' do
      # ログインする
      visit new_user_session_path
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # フォームに情報を入力する
      fill_in 'category[task]', with: @category.task
      find('input[name="commit"]').click
      # 投稿完了ページに遷移することを確認する
      expect(current_path).to eq root_path
    end
  end
end