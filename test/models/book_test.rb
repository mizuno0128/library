# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  author       :string(255)
#  company      :string(255)
#  code         :integer
#  publish_date :date
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
