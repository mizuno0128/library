class ChangePublishDateTypeToBooks < ActiveRecord::Migration
  def change
        change_column :books, :publish_date, :date
  end
end
