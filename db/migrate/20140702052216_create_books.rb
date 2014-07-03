class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :company
      t.integer :code
      t.integer :publish_date

      t.timestamps
    end
  end
end
