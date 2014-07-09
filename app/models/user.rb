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

class User < ActiveRecord::Base
  has_many :book_records

  validates :name,
    presence: true

  validates :tell,
    presence: true,
    numericality: {allow_blank: true}

  validates :address,
    presence: true

  validates :code,
    presence: true,
    numericality: {allow_blank: true},
    uniqueness: true

  validates :birthday,
    presence: true

  validates :password,
    presence: true
end
