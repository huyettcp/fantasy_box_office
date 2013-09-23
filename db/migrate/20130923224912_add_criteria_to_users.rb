class AddCriteriaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :league_id, :integer
    add_column :users, :movie_id, :integer
  end
end
