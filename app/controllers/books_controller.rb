class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name,:suthor,:company,:code,:publish_date)
  end
end


