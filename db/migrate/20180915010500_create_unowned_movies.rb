class CreateUnownedMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :unowned_movies do |t|
      t.string :title
      t.string :stars
      t.string :poster
      t.text :description
      t.datetime :release_date
      t.boolean :streaming?

      t.timestamps
    end
  end
end
