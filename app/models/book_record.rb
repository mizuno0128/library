# == Schema Information
#
# Table name: book_records
#
#  id             :integer          not null, primary key
#  lend_date      :date
#  return_date    :date
#  flag           :boolean
#  user_id        :integer
#  book_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#  ex_return_date :date
#

class BookRecord < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  def book_title
    book = Book.find(id)
    book.name
  end

  def return_book?
    flag == false && return_date.nil?
  end

  def expire?
    ex_return_date <= Date.today && return_date.nil?
  end
end