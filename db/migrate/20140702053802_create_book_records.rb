class CreateBookRecords < ActiveRecord::Migration
  def change
    create_table :book_records do |t|
      t.date :lend_date
      t.date :return_date
      t.boolean :flag
      t.references :user, index: true
      t.references :book, index: true

      t.timestamps
    end
  end
end
