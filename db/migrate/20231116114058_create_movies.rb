class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.decimal :rating
      t.string :title
      t.string :poster_url

      t.timestamps
    end
  end
end
