class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :movies, :category_id, :genre_id
  end
end
