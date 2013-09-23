class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.integer :name_of_league
      t.integer :number_of_members
      t.integer :users
      t.integer :user_id


      t.timestamps
    end
  end
end
