class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :movie_id
      t.integer :genre_id
      t.integer :position

      t.timestamps null: false
    end
  end
end
