class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.text :rating

      t.timestamps null: false
    end
  end
end
