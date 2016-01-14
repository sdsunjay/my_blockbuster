class ChangeRatedColumnName < ActiveRecord::Migration
  def change
    rename_column :movies, :rated_id, :rating_id
  end
end
