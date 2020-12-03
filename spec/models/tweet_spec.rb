require 'rails_helper'
describe User do
  before do
    @user = FactoryBot.build(:user)
    @category = FactoryBot.build(:category)
    @tweet = FactoryBot.build(:tweet)
  end

  describe 'ツイート新規登録' do
    context 'ツイート新規登録がうまくいくとき' do
      it "category_idとhour_timeとtextが存在すれば登録できる" do
        expect(@tweet).to be_valid
      end
    end
    context 'ツイート新規登録がうまくいかない時' do
      it "textが空だと登録できない" do
        @tweet.text = ""
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Textを入力してください")
      end
      it "hour_timeが空だと登録できない" do
        @tweet.hour_time = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Hour timeを入力してください")
      end
      it "categoryが空だと登録できない" do
        @tweet.category_id = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Categoryを入力してください")
      end
    end
  end
end