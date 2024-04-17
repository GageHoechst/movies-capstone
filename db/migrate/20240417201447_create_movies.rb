class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.string :image_url
      t.string :description
      t.string :run_time

      t.timestamps
    end
  end
end
