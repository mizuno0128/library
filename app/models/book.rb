class Book < ActiveRecord::Base
  has_many :book_records
end
