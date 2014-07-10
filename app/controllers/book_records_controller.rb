class BookRecordsController < ApplicationController
  def index
    @book_record = BookRecord.where('user_id = ?',session[:user_id]).order("lend_date DESC")
  end

  def new
    @book_record = BookRecord.new
  end

  def create
    book_record = BookRecord.new({"book_id" => params[:book_id],"user_id" => session[:user_id],
    	"lend_date" => Time.now,"ex_return_date" => 2.weeks.since,"flag" => false})
    if book_record.save
      flash[:msg] = '書籍を借りました。'
      redirect_to action: :index
    else
      render controller: :books,action: :show
    end
  end

  def update
    book_record = BookRecord.find(params[:id])
    @book_record = BookRecord.where('user_id = ?',session[:user_id]).order("lend_date DESC")
    if book_record.update({"return_date" => Time.now, "flag" => true})
      flash[:msg] = '書籍を返却しました。'
      render action: :index
    else
      render action: :index
    end
  end
end
