class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
