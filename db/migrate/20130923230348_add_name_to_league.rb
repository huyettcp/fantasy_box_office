class AddNameToLeague < ActiveRecord::Migration
  def change
    add_column :leagues, :league_name, :string
  end
end
