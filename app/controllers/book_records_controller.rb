class BookRecordsController < ApplicationController

	def index
	end

	def new
		@book_record = BookRecord.new
	end

	def create
	  book_record = BookRecord.new({"book_id" => params[:book_id],"user_id" => session[:user_id],"lend_date" => Time.now,
	  "ex_return_date" => 2.weeks.since,"flag" => false})
	  if book_record.save
	  	flash[:msg] = '書籍を借りました。'
	    redirect_to action: :index
      else
	    render controller: :books,action: :show 
	  end
	end
end
