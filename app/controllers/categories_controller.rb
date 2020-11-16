class CategoriesController < ApplicationController
  before_action :set_category, only: [:destroy]
  
  def create
      @category = Category.new(category_params)
      @category.save
      @categories = current_user.categories
  end

  def destroy
     @category.destroy
  end

  private
  def category_params
    params.require(:category).permit(:task).merge(user_id: current_user.id)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
