class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year_id
      t.integer :rated_id
      t.text :plot
      t.integer :writer_id
      t.integer :star_rating_id
      t.integer :cast_id
      t.integer :director_id
      t.integer :duration
      t.integer :producer_id
      t.integer :category_id
      t.integer :studio_id
      t.string :link
      t.string :coverpath

      t.timestamps null: false
    end
  end
end
