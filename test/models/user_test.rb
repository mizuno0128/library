# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  tell       :integer
#  code       :integer
#  address    :string(255)
#  birthday   :date
#  created_at :datetime
#  updated_at :datetime
#  password   :string(255)
#  admin      :boolean          default(FALSE)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
