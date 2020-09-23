class TweetsController < ApplicationController
  before_action :move_to_sign_in, except: [:index]

  def index
  end

  def move_to_sign_in
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
  end
end
