class CategoriesController < ApplicationController
  load_and_authorize_resource
	
  def index
  end
  
  def show 
    @categories = Category.all
    @category = Category.find(params[:id]) 
    @books =  @category.books.page(params[:page]).per(9)
  end
end
