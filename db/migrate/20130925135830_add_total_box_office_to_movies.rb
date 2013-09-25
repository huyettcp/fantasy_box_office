class AddTotalBoxOfficeToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :total_box_office, :integer
  end
end
