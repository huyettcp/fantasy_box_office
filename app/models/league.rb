class League < ActiveRecord::Base
  attr_accessible :league_name, :number_of_members, :users
  has_many :users
end


