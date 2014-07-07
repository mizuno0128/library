module BookRecordsHelper
  def book_title(id)
    book = Book.find(id)
    book.name
  end
end
