class CreateStarRatings < ActiveRecord::Migration
  def change
    create_table :star_ratings do |t|
      t.integer :rating

      t.timestamps null: false
    end
  end
end
