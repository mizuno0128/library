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
