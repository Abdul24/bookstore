class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book       = Book.new
    @category   = Category.new
    @author     = Author.new
    @publisher  = Publisher.new
    @page_title = 'Add New Book'
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
  
  private
    def book_params
  params.require(:books).permit(:title, :category_id, :author_id, :publisher_id, :isbn, :price, :buy, :format, :excerpt, :pages, :year)
    end

end
