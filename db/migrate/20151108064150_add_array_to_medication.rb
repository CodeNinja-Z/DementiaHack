class AddArrayToMedication < ActiveRecord::Migration
  def change
  	remove_column :medications, :day_of_week, :string
  	remove_column :medications, :time_of_day, :string
  	add_column :medications, :time_of_day, :string, array:true, default:[]
  	add_column :medications, :day_of_week, :string, array:true, default:[]
  end
end
