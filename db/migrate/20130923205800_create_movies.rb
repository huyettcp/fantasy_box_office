class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :budget
      t.integer :box_office_performance
      t.integer :user_id
      t.timestamps
    end
  end
end
