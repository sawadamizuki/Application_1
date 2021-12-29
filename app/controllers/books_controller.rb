class BooksController < ApplicationController
  protect_from_forgery with: :null_session

  def top
  end

  def index
    @books = Book.all
    @book = Book.new(book_params)

  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end

  def new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to book_path(book.id)
  end

  private
  def book_params
    params.permit(:title, :body)
  end
end