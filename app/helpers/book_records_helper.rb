module BookRecordsHelper
  def book_title(id)
    book = Book.find(id)
    book.name
  end

  def return_book?(date, flag)
    flag == false && date.nil?
  end

  def expire?(date, r_date)
    date <= Date.today && r_date.nil? 
  end
end
