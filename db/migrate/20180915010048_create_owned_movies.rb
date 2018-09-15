class CreateOwnedMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :owned_movies do |t|
      t.string :title
      t.string :stars
      t.string :poster
      t.string :type
      t.text :description
      t.datetime :release_date


      t.timestamps
    end
  end
end
