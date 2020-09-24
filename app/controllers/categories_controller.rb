class CategoriesController < ApplicationController
  # def index
  #   @categories = Category.all
  # end
  

  def create
    if @category = Category.new(category_params)
      @category.save
      redirect_to  controller: :tweets, action: :index
    else 
      render template: 'tweets/index'
    end
  end

  private
  def category_params
    params.require(:category).permit(:task).merge(user_id: current_user.id)
  end
end
