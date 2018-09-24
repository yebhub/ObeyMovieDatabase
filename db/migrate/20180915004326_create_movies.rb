class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :stars
      t.string :poster
      t.text :description
      t.datetime :release_date

      t.timestamps
    end
  end
end
