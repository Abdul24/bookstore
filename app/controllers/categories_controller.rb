class CategoriesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @page_title = 'Add New Category'
    @category = Category.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
