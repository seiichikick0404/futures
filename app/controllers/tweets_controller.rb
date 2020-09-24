class TweetsController < ApplicationController
  before_action :move_to_sign_in, except: [:index]

  def index

    @categories = current_user.categories.all
    @category = Category.new
  end

  def new
  end

  def move_to_sign_in
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
  end
end
