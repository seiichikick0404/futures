class TweetsController < ApplicationController
  before_action :move_to_sign_in, except: [:index]

  def index
    if user_signed_in?
      @categories = current_user.categories.all
    end
    @category = Category.new
  end

  def new
    @tweet_category = TweetCategory.new
    @categories = current_user.categories.all
  end

  def create
    @tweet_category = TweetCategory.new(tweet_category_params)
      if tweet_category.invalid?
        @tweet_category.save
        redirect_to index
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
    params.require(:tweet_category).permit(:text, :hour_time, :category_id).merge(user_id: current_user.id)
  end
  
end
