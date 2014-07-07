class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
    # @book.id
    # session[:user_id]
    # Time.now
    # 2.weeks.since
    # false
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(book_params)
	if @book.save
  	  redirect_to action: :index
  	else
  	  render action: :new
  	end
  end 

  def edit
  end

  def update
  	if @book.update(book_params)
  	   redirect_to action: :index
  	 else
  	   render action: :edit
  	 end
  end 

  def destroy
  	@book.destroy
  	redirect_to action: :index
  end

  private
  def book_params
    params.require(:book).permit(:name,:suthor,:company,:code,:publish_date)
  end

  def set_book
  	@book = Book.find(params[:id])
  end
  	
end


