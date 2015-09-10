class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @page_title = 'Add Book'
    @book       = Book.new
    @category   = Category.new
    @author     = Author.new
    @publisher  = Publisher.new
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
