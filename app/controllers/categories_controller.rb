class CategoriesController < ApplicationController
  before_action :set_category, only: [:destroy]
  
  def create
    if @category = Category.new(category_params)
      @category.save
      redirect_to  controller: :tweets, action: :index
    else 
      render template: 'tweets/index'
    end
  end

  def destroy
    if @category.destroy
      render :json => @categories
    else
      render template: 'tweets/index'
    end
  end

  private
  def category_params
    params.require(:category).permit(:task).merge(user_id: current_user.id)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
