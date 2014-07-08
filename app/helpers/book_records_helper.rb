module BookRecordsHelper
  def book_title(id)
    book = Book.find(id)
    book.name
  end

  def return_book?(date, flag)
    flag == false && date.nil?
  end

  def expire?(date, r_date)
    #binding.pry
    if date <= Date.today && r_date == nil
      return true
    end 
  end
end
