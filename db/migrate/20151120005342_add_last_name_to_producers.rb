class AddLastNameToProducers < ActiveRecord::Migration
  def change
    add_column :producers, :last_name, :string
  end
end
