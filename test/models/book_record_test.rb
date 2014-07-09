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

require 'test_helper'

class BookRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
