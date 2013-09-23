class ChangeNameOfLeagueToString < ActiveRecord::Migration
  def up
    remove_column :leagues, :name_of_league
  end

  def down
    add_column :leagues, :name_of_league, :string
  end
end


