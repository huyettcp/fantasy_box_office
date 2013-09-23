class UserMoviePicks < ActiveRecord::Migration
  def change
    create_table :user_movie_picks, :id => false do |t|
      t.integer :user_id
      t.integer :movie_id
    end
  end
end
