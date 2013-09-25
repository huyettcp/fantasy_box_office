class ChangeIntegersToStrings < ActiveRecord::Migration
  def change
    change_column :movies, :budget, :string
    change_column :movies, :box_office_performance, :string
    change_column :movies, :total_box_office, :string
  end
end
