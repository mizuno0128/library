module BookRecordsHelper
  def book_title(id)
    book = Book.find(id)
    book.name
  end

  def return_book?(date, flag)
    flag == false && date.nil?
  end
end
