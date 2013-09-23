class League < ActiveRecord::Base
  attr_accessible :name_of_league, :number_of_members, :users
  has_many :users
end


