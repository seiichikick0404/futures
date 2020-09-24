class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  
  def new
    @categories = Category.new
  end

  def create(category_params)
    Category.create
  end

  private
  def category_params
    params.require(:category).permit(:task).merge(user_id: current_user.id)
  end
end
