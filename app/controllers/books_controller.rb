class BooksController < ApplicationController
  protect_from_forgery with: :null_session

  def top
  end

  def index
    @books = Book.all
    @book = Book.new

  end

  def create
    book = Book.new(book_path)
    book.save
    redirect_to '/books'
  end

  def show
  end

  def new
  end

  def edit
  end


end
