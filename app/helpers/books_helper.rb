module BooksHelper
	def lend?
	  book_record = BookRecord.where('book_id = ? AND flag = ?',@book.id,false )
      book_record.present?
   end
end
