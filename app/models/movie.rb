class Movie < ActiveRecord::Base
  attr_accessible :title, :budget, :box_office_performance, :user_id, :total_box_office
  has_and_belongs_to_many :users
end

   