class AddExReturnDateToBookRecords < ActiveRecord::Migration
  def change
    add_column :book_records, :ex_return_date, :date
  end
end
