class ChangeNames < ActiveRecord::Migration
  def change
    rename_column :books, :authour_id, :author_id
  end
end
