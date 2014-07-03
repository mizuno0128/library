class User < ActiveRecord::Base
  has_many :book_records
end
