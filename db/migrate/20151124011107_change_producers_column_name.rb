class ChangeProducersColumnName < ActiveRecord::Migration
  def change
    rename_column :producers, :name, :first_name
  end
end
