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

class Book < ActiveRecord::Base
  has_many :book_records

  validates :name,
    presence: true

  validates :author,
    presence: true

  validates :company,
    presence: true

  validates :code,
    presence: true,
    numericality: {allow_blank: true}

  validates :publish_date,
    presence: true
end
