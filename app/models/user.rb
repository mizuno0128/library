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
    numericality: {allow_blank: true}

  validates :birthday,
    presence: true

  validates :password,
    presence: true
end
